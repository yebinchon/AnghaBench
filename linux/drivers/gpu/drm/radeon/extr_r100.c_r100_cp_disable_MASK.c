#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  visible_vram_size; } ;
struct radeon_device {TYPE_2__* ring; TYPE_1__ mc; } ;
struct TYPE_4__ {int ready; } ;

/* Variables and functions */
 int /*<<< orphan*/  RADEON_CP_CSQ_CNTL ; 
 int /*<<< orphan*/  RADEON_CP_CSQ_MODE ; 
 size_t RADEON_RING_TYPE_GFX_INDEX ; 
 int /*<<< orphan*/  R_000770_SCRATCH_UMSK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct radeon_device*,int /*<<< orphan*/ ) ; 

void FUNC4(struct radeon_device *rdev)
{
	/* Disable ring */
	FUNC3(rdev, rdev->mc.visible_vram_size);
	rdev->ring[RADEON_RING_TYPE_GFX_INDEX].ready = false;
	FUNC0(RADEON_CP_CSQ_MODE, 0);
	FUNC0(RADEON_CP_CSQ_CNTL, 0);
	FUNC0(R_000770_SCRATCH_UMSK, 0);
	if (FUNC2(rdev)) {
		FUNC1("Failed to wait GUI idle while programming pipes. Bad things might happen.\n");
	}
}