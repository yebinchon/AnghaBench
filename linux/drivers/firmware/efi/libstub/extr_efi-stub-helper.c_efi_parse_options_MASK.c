#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  efi_status_t ;

/* Variables and functions */
 int /*<<< orphan*/  EFI_SUCCESS ; 
 unsigned long __chunk_size ; 
 int __nokaslr ; 
 int __novamap ; 
 int __quiet ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 char* FUNC2 (char const*,char*) ; 

efi_status_t FUNC3(char const *cmdline)
{
	char *str;

	str = FUNC2(cmdline, "nokaslr");
	if (str == cmdline || (str && str > cmdline && *(str - 1) == ' '))
		__nokaslr = 1;

	str = FUNC2(cmdline, "quiet");
	if (str == cmdline || (str && str > cmdline && *(str - 1) == ' '))
		__quiet = 1;

	/*
	 * If no EFI parameters were specified on the cmdline we've got
	 * nothing to do.
	 */
	str = FUNC2(cmdline, "efi=");
	if (!str)
		return EFI_SUCCESS;

	/* Skip ahead to first argument */
	str += FUNC0("efi=");

	/*
	 * Remember, because efi= is also used by the kernel we need to
	 * skip over arguments we don't understand.
	 */
	while (*str && *str != ' ') {
		if (!FUNC1(str, "nochunk", 7)) {
			str += FUNC0("nochunk");
			__chunk_size = -1UL;
		}

		if (!FUNC1(str, "novamap", 7)) {
			str += FUNC0("novamap");
			__novamap = 1;
		}

		/* Group words together, delimited by "," */
		while (*str && *str != ' ' && *str != ',')
			str++;

		if (*str == ',')
			str++;
	}

	return EFI_SUCCESS;
}