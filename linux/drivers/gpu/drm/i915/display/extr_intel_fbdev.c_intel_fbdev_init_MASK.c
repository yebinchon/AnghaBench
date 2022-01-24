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
struct intel_fbdev {int preferred_bpp; int /*<<< orphan*/  helper; int /*<<< orphan*/  hpd_lock; } ;
struct drm_i915_private {int /*<<< orphan*/  fbdev_suspend_work; struct intel_fbdev* fbdev; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int) ; 
 int FUNC3 (struct drm_device*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  intel_fb_helper_funcs ; 
 int /*<<< orphan*/  FUNC6 (struct drm_device*,struct intel_fbdev*) ; 
 int /*<<< orphan*/  intel_fbdev_suspend_worker ; 
 int /*<<< orphan*/  FUNC7 (struct intel_fbdev*) ; 
 struct intel_fbdev* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 struct drm_i915_private* FUNC10 (struct drm_device*) ; 

int FUNC11(struct drm_device *dev)
{
	struct drm_i915_private *dev_priv = FUNC10(dev);
	struct intel_fbdev *ifbdev;
	int ret;

	if (FUNC2(!FUNC0(dev_priv)))
		return -ENODEV;

	ifbdev = FUNC8(sizeof(struct intel_fbdev), GFP_KERNEL);
	if (ifbdev == NULL)
		return -ENOMEM;

	FUNC9(&ifbdev->hpd_lock);
	FUNC4(dev, &ifbdev->helper, &intel_fb_helper_funcs);

	if (!FUNC6(dev, ifbdev))
		ifbdev->preferred_bpp = 32;

	ret = FUNC3(dev, &ifbdev->helper, 4);
	if (ret) {
		FUNC7(ifbdev);
		return ret;
	}

	dev_priv->fbdev = ifbdev;
	FUNC1(&dev_priv->fbdev_suspend_work, intel_fbdev_suspend_worker);

	FUNC5(&ifbdev->helper);

	return 0;
}