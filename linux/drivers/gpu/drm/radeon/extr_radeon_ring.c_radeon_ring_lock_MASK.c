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
struct radeon_ring {int dummy; } ;
struct radeon_device {int /*<<< orphan*/  ring_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct radeon_device*,struct radeon_ring*,unsigned int) ; 

int FUNC3(struct radeon_device *rdev, struct radeon_ring *ring, unsigned ndw)
{
	int r;

	FUNC0(&rdev->ring_lock);
	r = FUNC2(rdev, ring, ndw);
	if (r) {
		FUNC1(&rdev->ring_lock);
		return r;
	}
	return 0;
}