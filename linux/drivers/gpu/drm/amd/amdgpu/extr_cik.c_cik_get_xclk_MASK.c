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
typedef  int u32 ;
struct TYPE_3__ {int reference_freq; } ;
struct TYPE_4__ {TYPE_1__ spll; } ;
struct amdgpu_device {int flags; TYPE_2__ clock; } ;

/* Variables and functions */
 int AMD_IS_APU ; 
 int CG_CLKPIN_CNTL__XTALIN_DIVIDE_MASK ; 
 int GENERAL_PWRMGT__GPU_COUNTER_CLK_MASK ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ixCG_CLKPIN_CNTL ; 
 int /*<<< orphan*/  ixGENERAL_PWRMGT ; 

__attribute__((used)) static u32 FUNC1(struct amdgpu_device *adev)
{
	u32 reference_clock = adev->clock.spll.reference_freq;

	if (adev->flags & AMD_IS_APU) {
		if (FUNC0(ixGENERAL_PWRMGT) & GENERAL_PWRMGT__GPU_COUNTER_CLK_MASK)
			return reference_clock / 2;
	} else {
		if (FUNC0(ixCG_CLKPIN_CNTL) & CG_CLKPIN_CNTL__XTALIN_DIVIDE_MASK)
			return reference_clock / 4;
	}
	return reference_clock;
}