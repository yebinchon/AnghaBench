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
struct TYPE_2__ {int vram_start; int vram_end; } ;
struct radeon_device {TYPE_1__ mc; int /*<<< orphan*/  dev; } ;
struct r100_mc_save {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  R_000148_MC_FB_LOCATION ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct radeon_device*,struct r100_mc_save*) ; 
 int /*<<< orphan*/  FUNC5 (struct radeon_device*,struct r100_mc_save*) ; 
 scalar_t__ FUNC6 (struct radeon_device*) ; 

__attribute__((used)) static void FUNC7(struct radeon_device *rdev)
{
	struct r100_mc_save save;

	/* Stops all mc clients */
	FUNC5(rdev, &save);

	/* Wait for mc idle */
	if (FUNC6(rdev))
		FUNC3(rdev->dev, "rs400: Wait MC idle timeout before updating MC.\n");
	FUNC2(R_000148_MC_FB_LOCATION,
		FUNC0(rdev->mc.vram_start >> 16) |
		FUNC1(rdev->mc.vram_end >> 16));

	FUNC4(rdev, &save);
}