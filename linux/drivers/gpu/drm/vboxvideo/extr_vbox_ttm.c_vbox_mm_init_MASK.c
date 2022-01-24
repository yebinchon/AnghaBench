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
struct drm_device {int /*<<< orphan*/  pdev; } ;
struct vbox_private {int /*<<< orphan*/  fb_mtrr; int /*<<< orphan*/  available_vram_size; struct drm_device ddev; } ;
struct drm_vram_mm {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  DRM_MTRR_WC ; 
 scalar_t__ FUNC1 (struct drm_vram_mm*) ; 
 int FUNC2 (struct drm_vram_mm*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  drm_gem_vram_mm_funcs ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct drm_vram_mm* FUNC5 (struct drm_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC8(struct vbox_private *vbox)
{
	struct drm_vram_mm *vmm;
	int ret;
	struct drm_device *dev = &vbox->ddev;

	vmm = FUNC5(dev, FUNC7(dev->pdev, 0),
				       vbox->available_vram_size,
				       &drm_gem_vram_mm_funcs);
	if (FUNC1(vmm)) {
		ret = FUNC2(vmm);
		FUNC0("Error initializing VRAM MM; %d\n", ret);
		return ret;
	}

#ifdef DRM_MTRR_WC
	vbox->fb_mtrr = drm_mtrr_add(pci_resource_start(dev->pdev, 0),
				     pci_resource_len(dev->pdev, 0),
				     DRM_MTRR_WC);
#else
	vbox->fb_mtrr = FUNC3(FUNC7(dev->pdev, 0),
					 FUNC6(dev->pdev, 0));
#endif
	return 0;
}