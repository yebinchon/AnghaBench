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
struct radeon_ps {scalar_t__ evclk; scalar_t__ ecclk; } ;
struct radeon_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct radeon_device*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct radeon_device*,int) ; 

__attribute__((used)) static void FUNC2(struct radeon_device *rdev,
			     struct radeon_ps *new_rps,
			     struct radeon_ps *old_rps)
{
	if ((old_rps->evclk != new_rps->evclk) ||
	    (old_rps->ecclk != new_rps->ecclk)) {
		/* turn the clocks on when encoding, off otherwise */
		if (new_rps->evclk || new_rps->ecclk)
			FUNC1(rdev, false);
		else
			FUNC1(rdev, true);
		FUNC0(rdev, new_rps->evclk, new_rps->ecclk);
	}
}