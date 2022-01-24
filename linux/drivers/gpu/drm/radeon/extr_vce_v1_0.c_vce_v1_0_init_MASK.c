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
struct radeon_ring {int ready; } ;
struct radeon_device {struct radeon_ring* ring; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 size_t TN_RING_TYPE_VCE1_INDEX ; 
 size_t TN_RING_TYPE_VCE2_INDEX ; 
 int FUNC1 (struct radeon_device*,size_t,struct radeon_ring*) ; 
 int FUNC2 (struct radeon_device*) ; 

int FUNC3(struct radeon_device *rdev)
{
	struct radeon_ring *ring;
	int r;

	r = FUNC2(rdev);
	if (r)
		return r;

	ring = &rdev->ring[TN_RING_TYPE_VCE1_INDEX];
	ring->ready = true;
	r = FUNC1(rdev, TN_RING_TYPE_VCE1_INDEX, ring);
	if (r) {
		ring->ready = false;
		return r;
	}

	ring = &rdev->ring[TN_RING_TYPE_VCE2_INDEX];
	ring->ready = true;
	r = FUNC1(rdev, TN_RING_TYPE_VCE2_INDEX, ring);
	if (r) {
		ring->ready = false;
		return r;
	}

	FUNC0("VCE initialized successfully.\n");

	return 0;
}