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
typedef  int /*<<< orphan*/  uint32_t ;
struct amdgpu_device {scalar_t__ bios_scratch_reg_offset; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATOM_S6_ACC_MODE ; 
 int /*<<< orphan*/  ATOM_S6_CRITICAL_STATE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 

void FUNC2(struct amdgpu_device *adev, bool lock)
{
	uint32_t bios_6_scratch;

	bios_6_scratch = FUNC0(adev->bios_scratch_reg_offset + 6);

	if (lock) {
		bios_6_scratch |= ATOM_S6_CRITICAL_STATE;
		bios_6_scratch &= ~ATOM_S6_ACC_MODE;
	} else {
		bios_6_scratch &= ~ATOM_S6_CRITICAL_STATE;
		bios_6_scratch |= ATOM_S6_ACC_MODE;
	}

	FUNC1(adev->bios_scratch_reg_offset + 6, bios_6_scratch);
}