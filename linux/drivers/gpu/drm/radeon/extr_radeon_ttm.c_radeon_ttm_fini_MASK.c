#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int initialized; int /*<<< orphan*/  bdev; } ;
struct radeon_device {TYPE_1__ mman; scalar_t__ stolen_vga_memory; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  TTM_PL_TT ; 
 int /*<<< orphan*/  TTM_PL_VRAM ; 
 int FUNC1 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

void FUNC9(struct radeon_device *rdev)
{
	int r;

	if (!rdev->mman.initialized)
		return;
	FUNC6(rdev);
	if (rdev->stolen_vga_memory) {
		r = FUNC1(rdev->stolen_vga_memory, false);
		if (r == 0) {
			FUNC2(rdev->stolen_vga_memory);
			FUNC4(rdev->stolen_vga_memory);
		}
		FUNC3(&rdev->stolen_vga_memory);
	}
	FUNC7(&rdev->mman.bdev, TTM_PL_VRAM);
	FUNC7(&rdev->mman.bdev, TTM_PL_TT);
	FUNC8(&rdev->mman.bdev);
	FUNC5(rdev);
	rdev->mman.initialized = false;
	FUNC0("radeon: ttm finalized\n");
}