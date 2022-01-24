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
struct exynos_drm_private {int /*<<< orphan*/ * fb_helper; } ;
struct exynos_drm_fbdev {int dummy; } ;
struct drm_device {struct exynos_drm_private* dev_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct exynos_drm_fbdev*) ; 
 struct exynos_drm_fbdev* FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct drm_device *dev)
{
	struct exynos_drm_private *private = dev->dev_private;
	struct exynos_drm_fbdev *fbdev;

	if (!private || !private->fb_helper)
		return;

	fbdev = FUNC2(private->fb_helper);

	FUNC0(dev, private->fb_helper);
	FUNC1(fbdev);
	private->fb_helper = NULL;
}