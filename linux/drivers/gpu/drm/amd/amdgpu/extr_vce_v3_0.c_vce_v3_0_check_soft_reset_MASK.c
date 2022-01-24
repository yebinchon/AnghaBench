#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ srbm_soft_reset; } ;
struct amdgpu_device {TYPE_1__ vce; int /*<<< orphan*/  grbm_idx_mutex; } ;

/* Variables and functions */
 int AMDGPU_VCE_STATUS_BUSY_MASK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SOFT_RESET_VCE0 ; 
 int /*<<< orphan*/  SOFT_RESET_VCE1 ; 
 int /*<<< orphan*/  SRBM_SOFT_RESET ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mmGRBM_GFX_INDEX ; 
 int /*<<< orphan*/  mmVCE_STATUS ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC6(void *handle)
{
	struct amdgpu_device *adev = (struct amdgpu_device *)handle;
	u32 srbm_soft_reset = 0;

	/* According to VCE team , we should use VCE_STATUS instead
	 * SRBM_STATUS.VCE_BUSY bit for busy status checking.
	 * GRBM_GFX_INDEX.INSTANCE_INDEX is used to specify which VCE
	 * instance's registers are accessed
	 * (0 for 1st instance, 10 for 2nd instance).
	 *
	 *VCE_STATUS
	 *|UENC|ACPI|AUTO ACTIVE|RB1 |RB0 |RB2 |          |FW_LOADED|JOB |
	 *|----+----+-----------+----+----+----+----------+---------+----|
	 *|bit8|bit7|    bit6   |bit5|bit4|bit3|   bit2   |  bit1   |bit0|
	 *
	 * VCE team suggest use bit 3--bit 6 for busy status check
	 */
	FUNC4(&adev->grbm_idx_mutex);
	FUNC3(mmGRBM_GFX_INDEX, FUNC0(0));
	if (FUNC2(mmVCE_STATUS) & AMDGPU_VCE_STATUS_BUSY_MASK) {
		srbm_soft_reset = FUNC1(srbm_soft_reset, SRBM_SOFT_RESET, SOFT_RESET_VCE0, 1);
		srbm_soft_reset = FUNC1(srbm_soft_reset, SRBM_SOFT_RESET, SOFT_RESET_VCE1, 1);
	}
	FUNC3(mmGRBM_GFX_INDEX, FUNC0(1));
	if (FUNC2(mmVCE_STATUS) & AMDGPU_VCE_STATUS_BUSY_MASK) {
		srbm_soft_reset = FUNC1(srbm_soft_reset, SRBM_SOFT_RESET, SOFT_RESET_VCE0, 1);
		srbm_soft_reset = FUNC1(srbm_soft_reset, SRBM_SOFT_RESET, SOFT_RESET_VCE1, 1);
	}
	FUNC3(mmGRBM_GFX_INDEX, FUNC0(0));
	FUNC5(&adev->grbm_idx_mutex);

	if (srbm_soft_reset) {
		adev->vce.srbm_soft_reset = srbm_soft_reset;
		return true;
	} else {
		adev->vce.srbm_soft_reset = 0;
		return false;
	}
}