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
typedef  int uint32_t ;
struct amdgpu_device {int cg_flags; } ;

/* Variables and functions */
 int AMD_CG_SUPPORT_ROM_MGCG ; 
 int CGTT_ROM_CLK_CTRL0__SOFT_OVERRIDE0_MASK ; 
 int CGTT_ROM_CLK_CTRL0__SOFT_OVERRIDE1_MASK ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SMUIO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  mmCGTT_ROM_CLK_CTRL0 ; 

__attribute__((used)) static void FUNC3(struct amdgpu_device *adev,
						       bool enable)
{
	uint32_t def, data;

	def = data = FUNC0(FUNC1(SMUIO, 0, mmCGTT_ROM_CLK_CTRL0));

	if (enable && (adev->cg_flags & AMD_CG_SUPPORT_ROM_MGCG))
		data &= ~(CGTT_ROM_CLK_CTRL0__SOFT_OVERRIDE0_MASK |
			CGTT_ROM_CLK_CTRL0__SOFT_OVERRIDE1_MASK);
	else
		data |= CGTT_ROM_CLK_CTRL0__SOFT_OVERRIDE0_MASK |
			CGTT_ROM_CLK_CTRL0__SOFT_OVERRIDE1_MASK;

	if (def != data)
		FUNC2(FUNC1(SMUIO, 0, mmCGTT_ROM_CLK_CTRL0), data);
}