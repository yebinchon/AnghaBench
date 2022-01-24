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
struct radeon_ps {int dummy; } ;
struct radeon_device {int dummy; } ;
struct igp_ps {int /*<<< orphan*/  sclk_low; } ;
struct atom_clock_dividers {scalar_t__ enable_post_div; int /*<<< orphan*/  post_div; int /*<<< orphan*/  fb_div; int /*<<< orphan*/  ref_div; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMPUTE_ENGINE_PLL_PARAM ; 
 int R600_PM_NUMBER_OF_SCLKS ; 
 int /*<<< orphan*/  R600_SST_DFLT ; 
 int /*<<< orphan*/  FUNC0 (struct radeon_device*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct radeon_device*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct radeon_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct radeon_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct radeon_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct radeon_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct radeon_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct radeon_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct radeon_device*,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct radeon_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct atom_clock_dividers*) ; 
 struct igp_ps* FUNC10 (struct radeon_ps*) ; 

__attribute__((used)) static int FUNC11(struct radeon_device *rdev,
					    struct radeon_ps *boot_ps)
{
	struct atom_clock_dividers dividers;
	struct igp_ps *default_state = FUNC10(boot_ps);
	int i, ret;

	ret = FUNC9(rdev, COMPUTE_ENGINE_PLL_PARAM,
					     default_state->sclk_low, false, &dividers);
	if (ret)
		return ret;

	FUNC6(rdev, 0, dividers.ref_div);
	FUNC4(rdev, 0, dividers.fb_div);
	FUNC5(rdev, 0, dividers.post_div);

	if (dividers.enable_post_div)
		FUNC2(rdev, 0, true);
	else
		FUNC2(rdev, 0, false);

	FUNC7(rdev, 0, R600_SST_DFLT);
	FUNC3(rdev, 0, false);

	FUNC1(rdev, 0, true);
	for (i = 1; i < R600_PM_NUMBER_OF_SCLKS; i++)
		FUNC1(rdev, i, false);

	FUNC0(rdev, false);
	FUNC8(rdev, 0);

	return 0;
}