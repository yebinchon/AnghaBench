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
typedef  size_t u8 ;
struct biosmemcon_ebda {scalar_t__ signature; } ;

/* Variables and functions */
 scalar_t__ BIOS_MEMCONSOLE_V1_MAGIC ; 
 scalar_t__ BIOS_MEMCONSOLE_V2_MAGIC ; 
 int /*<<< orphan*/  FUNC0 (struct biosmemcon_ebda*) ; 
 int /*<<< orphan*/  FUNC1 (struct biosmemcon_ebda*) ; 
 unsigned int FUNC2 () ; 
 struct biosmemcon_ebda* FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static bool FUNC5(void)
{
	unsigned int address;
	size_t length, cur;

	address = FUNC2();
	if (!address) {
		FUNC4("memconsole: BIOS EBDA non-existent.\n");
		return false;
	}

	/* EBDA length is byte 0 of EBDA (in KB) */
	length = *(u8 *)FUNC3(address);
	length <<= 10; /* convert to bytes */

	/*
	 * Search through EBDA for BIOS memory console structure
	 * note: signature is not necessarily dword-aligned
	 */
	for (cur = 0; cur < length; cur++) {
		struct biosmemcon_ebda *hdr = FUNC3(address + cur);

		/* memconsole v1 */
		if (hdr->signature == BIOS_MEMCONSOLE_V1_MAGIC) {
			FUNC0(hdr);
			return true;
		}

		/* memconsole v2 */
		if (hdr->signature == BIOS_MEMCONSOLE_V2_MAGIC) {
			FUNC1(hdr);
			return true;
		}
	}

	FUNC4("memconsole: BIOS console EBDA structure not found!\n");
	return false;
}