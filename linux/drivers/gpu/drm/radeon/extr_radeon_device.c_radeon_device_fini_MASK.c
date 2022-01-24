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
struct radeon_device {int shutdown; int flags; scalar_t__ family; int /*<<< orphan*/ * rmmio; int /*<<< orphan*/ * rio_mem; int /*<<< orphan*/  pdev; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ CHIP_BONAIRE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int RADEON_IS_PX ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

void FUNC10(struct radeon_device *rdev)
{
	FUNC0("radeon: finishing device.\n");
	rdev->shutdown = true;
	/* evict vram memory */
	FUNC4(rdev);
	FUNC6(rdev);
	if (!FUNC3(rdev->pdev))
		FUNC9(rdev->pdev);
	if (rdev->flags & RADEON_IS_PX)
		FUNC8(rdev->dev);
	FUNC7(rdev->pdev, NULL, NULL, NULL);
	if (rdev->rio_mem)
		FUNC2(rdev->pdev, rdev->rio_mem);
	rdev->rio_mem = NULL;
	FUNC1(rdev->rmmio);
	rdev->rmmio = NULL;
	if (rdev->family >= CHIP_BONAIRE)
		FUNC5(rdev);
}