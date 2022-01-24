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
struct radeon_ring {int /*<<< orphan*/  rptr_save_reg; } ;
struct radeon_device {struct radeon_ring* ring; } ;

/* Variables and functions */
 size_t CAYMAN_RING_TYPE_CP1_INDEX ; 
 size_t CAYMAN_RING_TYPE_CP2_INDEX ; 
 size_t RADEON_RING_TYPE_GFX_INDEX ; 
 int /*<<< orphan*/  FUNC0 (struct radeon_device*,struct radeon_ring*) ; 
 int /*<<< orphan*/  FUNC1 (struct radeon_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct radeon_device*,int) ; 

__attribute__((used)) static void FUNC3(struct radeon_device *rdev)
{
	struct radeon_ring *ring;
	FUNC2(rdev, false);

	ring = &rdev->ring[RADEON_RING_TYPE_GFX_INDEX];
	FUNC0(rdev, ring);
	FUNC1(rdev, ring->rptr_save_reg);

	ring = &rdev->ring[CAYMAN_RING_TYPE_CP1_INDEX];
	FUNC0(rdev, ring);
	FUNC1(rdev, ring->rptr_save_reg);

	ring = &rdev->ring[CAYMAN_RING_TYPE_CP2_INDEX];
	FUNC0(rdev, ring);
	FUNC1(rdev, ring->rptr_save_reg);
}