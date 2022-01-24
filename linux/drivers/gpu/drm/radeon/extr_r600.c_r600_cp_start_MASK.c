#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct radeon_ring {int dummy; } ;
struct TYPE_5__ {int max_hw_contexts; } ;
struct TYPE_4__ {int max_hw_contexts; } ;
struct TYPE_6__ {TYPE_2__ r600; TYPE_1__ rv770; } ;
struct radeon_device {scalar_t__ family; TYPE_3__ config; struct radeon_ring* ring; } ;

/* Variables and functions */
 scalar_t__ CHIP_RV770 ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  PACKET3_ME_INITIALIZE ; 
 int FUNC2 (int) ; 
 size_t RADEON_RING_TYPE_GFX_INDEX ; 
 int /*<<< orphan*/  R_0086D8_CP_ME_CNTL ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct radeon_device*,struct radeon_ring*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct radeon_device*,struct radeon_ring*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct radeon_ring*,int) ; 

int FUNC7(struct radeon_device *rdev)
{
	struct radeon_ring *ring = &rdev->ring[RADEON_RING_TYPE_GFX_INDEX];
	int r;
	uint32_t cp_me;

	r = FUNC4(rdev, ring, 7);
	if (r) {
		FUNC0("radeon: cp failed to lock ring (%d).\n", r);
		return r;
	}
	FUNC6(ring, FUNC1(PACKET3_ME_INITIALIZE, 5));
	FUNC6(ring, 0x1);
	if (rdev->family >= CHIP_RV770) {
		FUNC6(ring, 0x0);
		FUNC6(ring, rdev->config.rv770.max_hw_contexts - 1);
	} else {
		FUNC6(ring, 0x3);
		FUNC6(ring, rdev->config.r600.max_hw_contexts - 1);
	}
	FUNC6(ring, FUNC2(1));
	FUNC6(ring, 0);
	FUNC6(ring, 0);
	FUNC5(rdev, ring, false);

	cp_me = 0xff;
	FUNC3(R_0086D8_CP_ME_CNTL, cp_me);
	return 0;
}