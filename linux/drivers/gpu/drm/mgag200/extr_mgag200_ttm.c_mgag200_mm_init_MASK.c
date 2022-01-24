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
struct TYPE_2__ {int /*<<< orphan*/  vram_size; } ;
struct mga_device {int /*<<< orphan*/  fb_mtrr; TYPE_1__ mc; struct drm_device* dev; } ;
struct drm_vram_mm {int dummy; } ;
struct drm_device {int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 scalar_t__ FUNC1 (struct drm_vram_mm*) ; 
 int FUNC2 (struct drm_vram_mm*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  drm_gem_vram_mm_funcs ; 
 struct drm_vram_mm* FUNC5 (struct drm_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC8(struct mga_device *mdev)
{
	struct drm_vram_mm *vmm;
	int ret;
	struct drm_device *dev = mdev->dev;

	vmm = FUNC5(dev, FUNC7(dev->pdev, 0),
				       mdev->mc.vram_size,
				       &drm_gem_vram_mm_funcs);
	if (FUNC1(vmm)) {
		ret = FUNC2(vmm);
		FUNC0("Error initializing VRAM MM; %d\n", ret);
		return ret;
	}

	FUNC3(FUNC7(dev->pdev, 0),
				   FUNC6(dev->pdev, 0));

	mdev->fb_mtrr = FUNC4(FUNC7(dev->pdev, 0),
					 FUNC6(dev->pdev, 0));

	return 0;
}