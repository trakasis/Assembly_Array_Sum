; Joshua Demeter
; CSC-3410-001
; Program 1: Array Sum
; created 2022-10-10
.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.data
ai_array DWORD -2, -5, -1, -10, -1

.code

main proc
			  mov ebx, 0
			  lea esi, ai_array
			  mov ecx, 5
			  mov eax, 0
			  mov edx, 0

	forCount: cmp [esi], eax
			  jle endIfAbove
			  add ebx, [esi]
			  add edx, 1
	endIfAbove:
			  add esi, 4
			  loop forCount

invoke ExitProcess,0

main endp
end main
