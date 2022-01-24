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
 size_t R600_RING_TYPE_UVD_INDEX ; 
 int /*<<< orphan*/  FUNC0 (struct radeon_device*) ; 

void FUNC1(struct radeon_device *rdev)
{
	struct radeon_ring *ring = &rdev->ring[R600_RING_TYPE_UVD_INDEX];

	FUNC0(rdev);
	ring->ready = false;
}