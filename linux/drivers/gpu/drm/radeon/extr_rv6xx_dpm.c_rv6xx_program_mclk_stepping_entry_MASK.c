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
typedef  int /*<<< orphan*/  u32 ;
struct radeon_device {int dummy; } ;
struct atom_clock_dividers {scalar_t__ enable_post_div; int /*<<< orphan*/  post_div; int /*<<< orphan*/  fb_div; int /*<<< orphan*/  ref_div; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMPUTE_MEMORY_PLL_PARAM ; 
 int EINVAL ; 
 scalar_t__ FUNC0 (struct radeon_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct atom_clock_dividers*) ; 
 int /*<<< orphan*/  FUNC1 (struct radeon_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct radeon_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct radeon_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct radeon_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct radeon_device *rdev,
					     u32 entry, u32 clock)
{
	struct atom_clock_dividers dividers;

	if (FUNC0(rdev, COMPUTE_MEMORY_PLL_PARAM, clock, false, &dividers))
	    return -EINVAL;


	FUNC4(rdev, entry, dividers.ref_div);
	FUNC2(rdev, entry, dividers.fb_div);
	FUNC3(rdev, entry, dividers.post_div);

	if (dividers.enable_post_div)
		FUNC1(rdev, entry, true);
	else
		FUNC1(rdev, entry, false);

	return 0;
}