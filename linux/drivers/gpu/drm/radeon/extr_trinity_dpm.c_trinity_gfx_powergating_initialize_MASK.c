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
typedef  scalar_t__ u32 ;
struct trinity_power_info {scalar_t__ override_dynamic_mgpg; } ;
struct radeon_device {int dummy; } ;
struct atom_clock_dividers {int /*<<< orphan*/  post_div; } ;

/* Variables and functions */
 scalar_t__ ATI_REV_ID_MASK ; 
 scalar_t__ ATI_REV_ID_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  CG_GIPOTS ; 
 int /*<<< orphan*/  CG_GIPOT_MASK ; 
 int /*<<< orphan*/  CG_PG_CTRL ; 
 int /*<<< orphan*/  COMPUTE_ENGINE_PLL_PARAM ; 
 int /*<<< orphan*/  GFX_POWER_GATING_CNTL ; 
 int /*<<< orphan*/  HW_REV ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ PDS_DIV_MASK ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (int) ; 
 scalar_t__ SSSD_MASK ; 
 int FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int,scalar_t__,int,scalar_t__*,scalar_t__*) ; 
 int FUNC11 (struct radeon_device*,int /*<<< orphan*/ ,int,int,struct atom_clock_dividers*) ; 
 scalar_t__ FUNC12 (struct radeon_device*) ; 
 struct trinity_power_info* FUNC13 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC14 (struct radeon_device*) ; 

__attribute__((used)) static void FUNC15(struct radeon_device *rdev)
{
	struct trinity_power_info *pi = FUNC13(rdev);
	u32 p, u;
	u32 value;
	struct atom_clock_dividers dividers;
	u32 xclk = FUNC12(rdev);
	u32 sssd = 1;
	int ret;
	u32 hw_rev = (FUNC2(HW_REV) & ATI_REV_ID_MASK) >> ATI_REV_ID_SHIFT;

	ret = FUNC11(rdev, COMPUTE_ENGINE_PLL_PARAM,
					     25000, false, &dividers);
	if (ret)
		return;

	value = FUNC3(GFX_POWER_GATING_CNTL);
	value &= ~(SSSD_MASK | PDS_DIV_MASK);
	if (sssd)
		value |= FUNC5(1);
	value |= FUNC1(dividers.post_div);
	FUNC9(GFX_POWER_GATING_CNTL, value);

	FUNC10(500, xclk, 16, &p, &u);

	FUNC7(CG_PG_CTRL, FUNC4(p) | FUNC6(u));

	FUNC8(CG_GIPOTS, FUNC0(p), ~CG_GIPOT_MASK);

	/* XXX double check hw_rev */
	if (pi->override_dynamic_mgpg && (hw_rev == 0))
		FUNC14(rdev);

}