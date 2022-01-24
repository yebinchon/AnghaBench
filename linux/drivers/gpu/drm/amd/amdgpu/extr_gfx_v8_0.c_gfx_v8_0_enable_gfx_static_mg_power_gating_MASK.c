#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {TYPE_1__* pp_funcs; } ;
struct amdgpu_device {scalar_t__ asic_type; TYPE_2__ powerplay; } ;
struct TYPE_3__ {scalar_t__ set_powergating_by_smu; } ;

/* Variables and functions */
 int /*<<< orphan*/  AMD_IP_BLOCK_TYPE_GFX ; 
 scalar_t__ CHIP_POLARIS11 ; 
 scalar_t__ CHIP_POLARIS12 ; 
 scalar_t__ CHIP_VEGAM ; 
 int /*<<< orphan*/  RLC_PG_CNTL ; 
 int /*<<< orphan*/  STATIC_PER_CU_PG_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct amdgpu_device*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct amdgpu_device *adev,
						       bool enable)
{
	if (((adev->asic_type == CHIP_POLARIS11) ||
	    (adev->asic_type == CHIP_POLARIS12) ||
	    (adev->asic_type == CHIP_VEGAM)) &&
	    adev->powerplay.pp_funcs->set_powergating_by_smu)
		/* Send msg to SMU via Powerplay */
		FUNC1(adev, AMD_IP_BLOCK_TYPE_GFX, enable);

	FUNC0(RLC_PG_CNTL, STATIC_PER_CU_PG_ENABLE, enable ? 1 : 0);
}