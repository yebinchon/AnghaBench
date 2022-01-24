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
struct radeon_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct radeon_device*,int) ; 
 int FUNC1 (struct radeon_device*) ; 
 int FUNC2 (struct radeon_device*) ; 
 int FUNC3 (struct radeon_device*) ; 

int FUNC4(struct radeon_device *rdev)
{
	int r;

	r = FUNC2(rdev);
	if (r)
		return r;

	/* unhalt the MEs */
	FUNC0(rdev, true);

	/* start the gfx rings and rlc compute queues */
	r = FUNC1(rdev);
	if (r)
		return r;
	r = FUNC3(rdev);
	if (r)
		return r;

	return 0;
}