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
struct rv6xx_sclk_stepping {int /*<<< orphan*/  post_divider; } ;
struct radeon_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct radeon_device*,struct rv6xx_sclk_stepping*,struct rv6xx_sclk_stepping*) ; 

__attribute__((used)) static struct rv6xx_sclk_stepping FUNC1(struct radeon_device *rdev,
							   struct rv6xx_sclk_stepping *cur,
							   struct rv6xx_sclk_stepping *target)
{
	struct rv6xx_sclk_stepping next = *cur;

	while (FUNC0(rdev, &next, target))
		next.post_divider--;

	return next;
}