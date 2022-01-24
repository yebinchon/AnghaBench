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
struct igp_ps {scalar_t__ sclk_high; scalar_t__ sclk_low; } ;
struct atom_clock_dividers {scalar_t__ ref_div; scalar_t__ post_div; scalar_t__ fb_div; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMPUTE_ENGINE_PLL_PARAM ; 
 int EINVAL ; 
 int FORCE_FEEDBACK_DIV ; 
 int /*<<< orphan*/  FVTHROT_FBDIV_REG0 ; 
 int /*<<< orphan*/  FVTHROT_FBDIV_REG1 ; 
 int FUNC0 (scalar_t__) ; 
 int MAX_FEEDBACK_DIV_MASK ; 
 int FUNC1 (scalar_t__) ; 
 int MIN_FEEDBACK_DIV_MASK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC3 (struct radeon_device*,int /*<<< orphan*/ ,scalar_t__,int,struct atom_clock_dividers*) ; 
 int /*<<< orphan*/  FUNC4 (struct radeon_device*,scalar_t__) ; 
 struct igp_ps* FUNC5 (struct radeon_ps*) ; 

__attribute__((used)) static int FUNC6(struct radeon_device *rdev,
					  struct radeon_ps *new_ps,
					  struct radeon_ps *old_ps)
{
	struct atom_clock_dividers min_dividers, max_dividers, current_max_dividers;
	struct igp_ps *new_state = FUNC5(new_ps);
	struct igp_ps *old_state = FUNC5(old_ps);
	int ret;

	if ((new_state->sclk_high == old_state->sclk_high) &&
	    (new_state->sclk_low == old_state->sclk_low))
		return 0;

	ret = FUNC3(rdev, COMPUTE_ENGINE_PLL_PARAM,
					     new_state->sclk_low, false, &min_dividers);
	if (ret)
		return ret;

	ret = FUNC3(rdev, COMPUTE_ENGINE_PLL_PARAM,
					     new_state->sclk_high, false, &max_dividers);
	if (ret)
		return ret;

	ret = FUNC3(rdev, COMPUTE_ENGINE_PLL_PARAM,
					     old_state->sclk_high, false, &current_max_dividers);
	if (ret)
		return ret;

	if ((min_dividers.ref_div != max_dividers.ref_div) ||
	    (min_dividers.post_div != max_dividers.post_div) ||
	    (max_dividers.ref_div != current_max_dividers.ref_div) ||
	    (max_dividers.post_div != current_max_dividers.post_div))
		return -EINVAL;

	FUNC4(rdev, max_dividers.fb_div);

	if (max_dividers.fb_div > min_dividers.fb_div) {
		FUNC2(FVTHROT_FBDIV_REG0,
			 FUNC1(min_dividers.fb_div) |
			 FUNC0(max_dividers.fb_div),
			 ~(MIN_FEEDBACK_DIV_MASK | MAX_FEEDBACK_DIV_MASK));

		FUNC2(FVTHROT_FBDIV_REG1, 0, ~FORCE_FEEDBACK_DIV);
	}

	return 0;
}