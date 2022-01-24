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
struct radeon_device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int RADEON_ISYNC_ANY2D_IDLE3D ; 
 int RADEON_ISYNC_ANY3D_IDLE2D ; 
 int /*<<< orphan*/  RADEON_ISYNC_CNTL ; 
 int RADEON_ISYNC_CPSCRATCH_IDLEGUI ; 
 int RADEON_ISYNC_WAIT_IDLEGUI ; 
 int FUNC1 (struct radeon_device*,struct radeon_ring*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct radeon_device*,struct radeon_ring*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct radeon_ring*,int) ; 

void FUNC4(struct radeon_device *rdev, struct radeon_ring *ring)
{
	int r;

	r = FUNC1(rdev, ring, 2);
	if (r) {
		return;
	}
	FUNC3(ring, FUNC0(RADEON_ISYNC_CNTL, 0));
	FUNC3(ring,
			  RADEON_ISYNC_ANY2D_IDLE3D |
			  RADEON_ISYNC_ANY3D_IDLE2D |
			  RADEON_ISYNC_WAIT_IDLEGUI |
			  RADEON_ISYNC_CPSCRATCH_IDLEGUI);
	FUNC2(rdev, ring, false);
}