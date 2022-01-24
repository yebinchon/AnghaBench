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
typedef  int uint32_t ;
struct TYPE_2__ {int num_instances; } ;
struct amdgpu_device {int cg_flags; TYPE_1__ sdma; } ;

/* Variables and functions */
 int AMD_CG_SUPPORT_SDMA_MGCG ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int SDMA0_CLK_CTRL__SOFT_OVERRIDE0_MASK ; 
 int SDMA0_CLK_CTRL__SOFT_OVERRIDE1_MASK ; 
 int SDMA0_CLK_CTRL__SOFT_OVERRIDE2_MASK ; 
 int SDMA0_CLK_CTRL__SOFT_OVERRIDE3_MASK ; 
 int SDMA0_CLK_CTRL__SOFT_OVERRIDE4_MASK ; 
 int SDMA0_CLK_CTRL__SOFT_OVERRIDE5_MASK ; 
 int SDMA0_CLK_CTRL__SOFT_OVERRIDE6_MASK ; 
 int SDMA0_CLK_CTRL__SOFT_OVERRIDE7_MASK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  mmSDMA0_CLK_CTRL ; 
 int /*<<< orphan*/  FUNC2 (struct amdgpu_device*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct amdgpu_device *adev,
						       bool enable)
{
	uint32_t data, def;
	int i;

	for (i = 0; i < adev->sdma.num_instances; i++) {
		if (enable && (adev->cg_flags & AMD_CG_SUPPORT_SDMA_MGCG)) {
			/* Enable sdma clock gating */
			def = data = FUNC0(FUNC2(adev, i, mmSDMA0_CLK_CTRL));
			data &= ~(SDMA0_CLK_CTRL__SOFT_OVERRIDE7_MASK |
				  SDMA0_CLK_CTRL__SOFT_OVERRIDE6_MASK |
				  SDMA0_CLK_CTRL__SOFT_OVERRIDE5_MASK |
				  SDMA0_CLK_CTRL__SOFT_OVERRIDE4_MASK |
				  SDMA0_CLK_CTRL__SOFT_OVERRIDE3_MASK |
				  SDMA0_CLK_CTRL__SOFT_OVERRIDE2_MASK |
				  SDMA0_CLK_CTRL__SOFT_OVERRIDE1_MASK |
				  SDMA0_CLK_CTRL__SOFT_OVERRIDE0_MASK);
			if (def != data)
				FUNC1(FUNC2(adev, i, mmSDMA0_CLK_CTRL), data);
		} else {
			/* Disable sdma clock gating */
			def = data = FUNC0(FUNC2(adev, i, mmSDMA0_CLK_CTRL));
			data |= (SDMA0_CLK_CTRL__SOFT_OVERRIDE7_MASK |
				 SDMA0_CLK_CTRL__SOFT_OVERRIDE6_MASK |
				 SDMA0_CLK_CTRL__SOFT_OVERRIDE5_MASK |
				 SDMA0_CLK_CTRL__SOFT_OVERRIDE4_MASK |
				 SDMA0_CLK_CTRL__SOFT_OVERRIDE3_MASK |
				 SDMA0_CLK_CTRL__SOFT_OVERRIDE2_MASK |
				 SDMA0_CLK_CTRL__SOFT_OVERRIDE1_MASK |
				 SDMA0_CLK_CTRL__SOFT_OVERRIDE0_MASK);
			if (def != data)
				FUNC1(FUNC2(adev, i, mmSDMA0_CLK_CTRL), data);
		}
	}
}