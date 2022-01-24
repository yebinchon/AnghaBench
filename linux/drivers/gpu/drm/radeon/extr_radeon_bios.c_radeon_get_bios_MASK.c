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
typedef  int uint16_t ;
struct radeon_device {int* bios; int bios_header_start; int is_atom_bios; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 void* FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int FUNC5 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC6 (int*) ; 
 int /*<<< orphan*/  FUNC7 (int*,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,int) ; 
 int FUNC9 (struct radeon_device*) ; 
 int FUNC10 (struct radeon_device*) ; 
 int FUNC11 (struct radeon_device*) ; 
 int FUNC12 (struct radeon_device*) ; 
 int FUNC13 (struct radeon_device*) ; 

bool FUNC14(struct radeon_device *rdev)
{
	bool r;
	uint16_t tmp;

	r = FUNC10(rdev);
	if (r == false)
		r = FUNC9(rdev);
	if (r == false)
		r = FUNC5(rdev);
	if (r == false)
		r = FUNC11(rdev);
	if (r == false)
		r = FUNC12(rdev);
	if (r == false)
		r = FUNC13(rdev);
	if (r == false || rdev->bios == NULL) {
		FUNC1("Unable to locate a BIOS ROM\n");
		rdev->bios = NULL;
		return false;
	}
	if (rdev->bios[0] != 0x55 || rdev->bios[1] != 0xaa) {
		FUNC8("BIOS signature incorrect %x %x\n", rdev->bios[0], rdev->bios[1]);
		goto free_bios;
	}

	tmp = FUNC3(0x18);
	if (FUNC4(tmp + 0x14) != 0x0) {
		FUNC2("Not an x86 BIOS ROM, not using.\n");
		goto free_bios;
	}

	rdev->bios_header_start = FUNC3(0x48);
	if (!rdev->bios_header_start) {
		goto free_bios;
	}
	tmp = rdev->bios_header_start + 4;
	if (!FUNC7(rdev->bios + tmp, "ATOM", 4) ||
	    !FUNC7(rdev->bios + tmp, "MOTA", 4)) {
		rdev->is_atom_bios = true;
	} else {
		rdev->is_atom_bios = false;
	}

	FUNC0("%sBIOS detected\n", rdev->is_atom_bios ? "ATOM" : "COM");
	return true;
free_bios:
	FUNC6(rdev->bios);
	rdev->bios = NULL;
	return false;
}