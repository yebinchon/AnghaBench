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
struct hibmc_drm_private {int /*<<< orphan*/  fb_size; struct drm_device* dev; } ;
struct drm_vram_mm {int dummy; } ;
struct drm_device {int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 scalar_t__ FUNC1 (struct drm_vram_mm*) ; 
 int FUNC2 (struct drm_vram_mm*) ; 
 int /*<<< orphan*/  drm_gem_vram_mm_funcs ; 
 struct drm_vram_mm* FUNC3 (struct drm_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC5(struct hibmc_drm_private *hibmc)
{
	struct drm_vram_mm *vmm;
	int ret;
	struct drm_device *dev = hibmc->dev;

	vmm = FUNC3(dev,
				       FUNC4(dev->pdev, 0),
				       hibmc->fb_size, &drm_gem_vram_mm_funcs);
	if (FUNC1(vmm)) {
		ret = FUNC2(vmm);
		FUNC0("Error initializing VRAM MM; %d\n", ret);
		return ret;
	}

	return 0;
}