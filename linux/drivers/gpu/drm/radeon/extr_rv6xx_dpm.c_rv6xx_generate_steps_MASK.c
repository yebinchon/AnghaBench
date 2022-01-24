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
typedef  scalar_t__ u8 ;
typedef  scalar_t__ u32 ;
struct rv6xx_sclk_stepping {scalar_t__ vco_frequency; scalar_t__ post_divider; } ;
struct radeon_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  R600_ENDINGVCOSTEPPCT_DFLT ; 
 int /*<<< orphan*/  R600_VCOSTEPPCT_DFLT ; 
 scalar_t__ FUNC0 (struct radeon_device*,struct rv6xx_sclk_stepping*,struct rv6xx_sclk_stepping*) ; 
 int /*<<< orphan*/  FUNC1 (struct radeon_device*,scalar_t__,struct rv6xx_sclk_stepping*) ; 
 struct rv6xx_sclk_stepping FUNC2 (struct radeon_device*,struct rv6xx_sclk_stepping*,struct rv6xx_sclk_stepping*) ; 
 struct rv6xx_sclk_stepping FUNC3 (struct radeon_device*,struct rv6xx_sclk_stepping*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct radeon_device*,int /*<<< orphan*/ ,struct rv6xx_sclk_stepping*) ; 
 scalar_t__ FUNC5 (struct radeon_device*,struct rv6xx_sclk_stepping*,struct rv6xx_sclk_stepping*,int) ; 

__attribute__((used)) static void FUNC6(struct radeon_device *rdev,
				 u32 low, u32 high,
				 u32 start_index, u8 *end_index)
{
	struct rv6xx_sclk_stepping cur;
	struct rv6xx_sclk_stepping target;
	bool increasing_vco;
	u32 step_index = start_index;

	FUNC1(rdev, low, &cur);
	FUNC1(rdev, high, &target);

	FUNC4(rdev, step_index++, &cur);

	increasing_vco = (target.vco_frequency >= cur.vco_frequency);

	if (target.post_divider > cur.post_divider)
		cur.post_divider = target.post_divider;

	while (1) {
		struct rv6xx_sclk_stepping next;

		if (FUNC0(rdev, &cur, &target))
			next = FUNC2(rdev, &cur, &target);
		else
			next = FUNC3(rdev, &cur, increasing_vco, R600_VCOSTEPPCT_DFLT);

		if (FUNC5(rdev, &next, &target, increasing_vco)) {
			struct rv6xx_sclk_stepping tiny =
				FUNC3(rdev, &target, !increasing_vco, R600_ENDINGVCOSTEPPCT_DFLT);
			tiny.post_divider = next.post_divider;

			if (!FUNC5(rdev, &tiny, &cur, !increasing_vco))
				FUNC4(rdev, step_index++, &tiny);

			if ((next.post_divider != target.post_divider) &&
			    (next.vco_frequency != target.vco_frequency)) {
				struct rv6xx_sclk_stepping final_vco;

				final_vco.vco_frequency = target.vco_frequency;
				final_vco.post_divider = next.post_divider;

				FUNC4(rdev, step_index++, &final_vco);
			}

			FUNC4(rdev, step_index++, &target);
			break;
		} else
			FUNC4(rdev, step_index++, &next);

		cur = next;
	}

	*end_index = (u8)step_index - 1;

}