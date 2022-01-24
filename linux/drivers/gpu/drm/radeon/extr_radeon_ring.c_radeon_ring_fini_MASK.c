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
struct radeon_ring {int ready; struct radeon_bo* ring_obj; int /*<<< orphan*/ * ring; } ;
struct radeon_device {int /*<<< orphan*/  ring_lock; } ;
struct radeon_bo {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct radeon_bo*) ; 
 int FUNC4 (struct radeon_bo*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct radeon_bo*) ; 
 int /*<<< orphan*/  FUNC6 (struct radeon_bo**) ; 
 int /*<<< orphan*/  FUNC7 (struct radeon_bo*) ; 

void FUNC8(struct radeon_device *rdev, struct radeon_ring *ring)
{
	int r;
	struct radeon_bo *ring_obj;

	FUNC1(&rdev->ring_lock);
	ring_obj = ring->ring_obj;
	ring->ready = false;
	ring->ring = NULL;
	ring->ring_obj = NULL;
	FUNC2(&rdev->ring_lock);

	if (ring_obj) {
		r = FUNC4(ring_obj, false);
		if (FUNC0(r == 0)) {
			FUNC3(ring_obj);
			FUNC5(ring_obj);
			FUNC7(ring_obj);
		}
		FUNC6(&ring_obj);
	}
}