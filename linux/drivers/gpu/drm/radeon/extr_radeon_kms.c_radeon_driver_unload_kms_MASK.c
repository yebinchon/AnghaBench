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
struct radeon_device {int /*<<< orphan*/ * rmmio; } ;
struct drm_device {struct radeon_device* dev_private; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct radeon_device*) ; 
 scalar_t__ FUNC5 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct radeon_device*) ; 

void FUNC7(struct drm_device *dev)
{
	struct radeon_device *rdev = dev->dev_private;

	if (rdev == NULL)
		return;

	if (rdev->rmmio == NULL)
		goto done_free;

	if (FUNC5(dev)) {
		FUNC2(dev->dev);
		FUNC1(dev->dev);
	}

	FUNC3(rdev);
	
	FUNC6(rdev);
	FUNC4(rdev);

done_free:
	FUNC0(rdev);
	dev->dev_private = NULL;
}