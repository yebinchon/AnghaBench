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
struct radeon_ring {int /*<<< orphan*/  ring_size; } ;
struct radeon_device {int /*<<< orphan*/  dev; struct radeon_ring* ring; int /*<<< orphan*/  has_uvd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t R600_RING_TYPE_UVD_INDEX ; 
 int /*<<< orphan*/  UVD_NO_OP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC2 (struct radeon_device*,struct radeon_ring*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct radeon_device*) ; 

__attribute__((used)) static void FUNC4(struct radeon_device *rdev)
{
	struct radeon_ring *ring;
	int r;

	if (!rdev->has_uvd || !rdev->ring[R600_RING_TYPE_UVD_INDEX].ring_size)
		return;

	ring = &rdev->ring[R600_RING_TYPE_UVD_INDEX];
	r = FUNC2(rdev, ring, ring->ring_size, 0, FUNC0(UVD_NO_OP, 0));
	if (r) {
		FUNC1(rdev->dev, "failed initializing UVD ring (%d).\n", r);
		return;
	}
	r = FUNC3(rdev);
	if (r) {
		FUNC1(rdev->dev, "failed initializing UVD (%d).\n", r);
		return;
	}
}