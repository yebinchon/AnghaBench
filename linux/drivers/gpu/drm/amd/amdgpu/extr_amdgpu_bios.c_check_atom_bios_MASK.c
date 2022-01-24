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
typedef  int uint8_t ;
typedef  int uint16_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int*,char*,int) ; 

__attribute__((used)) static bool FUNC4(uint8_t *bios, size_t size)
{
	uint16_t tmp, bios_header_start;

	if (!bios || size < 0x49) {
		FUNC2("vbios mem is null or mem size is wrong\n");
		return false;
	}

	if (!FUNC0(bios)) {
		FUNC2("BIOS signature incorrect %x %x\n", bios[0], bios[1]);
		return false;
	}

	bios_header_start = bios[0x48] | (bios[0x49] << 8);
	if (!bios_header_start) {
		FUNC2("Can't locate bios header\n");
		return false;
	}

	tmp = bios_header_start + 4;
	if (size < tmp) {
		FUNC2("BIOS header is broken\n");
		return false;
	}

	if (!FUNC3(bios + tmp, "ATOM", 4) ||
	    !FUNC3(bios + tmp, "MOTA", 4)) {
		FUNC1("ATOMBIOS detected\n");
		return true;
	}

	return false;
}