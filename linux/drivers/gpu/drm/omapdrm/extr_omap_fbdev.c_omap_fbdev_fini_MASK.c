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
struct omap_fbdev {scalar_t__ fb; scalar_t__ bo; } ;
struct omap_drm_private {struct drm_fb_helper* fbdev; } ;
struct drm_fb_helper {int dummy; } ;
struct drm_device {struct omap_drm_private* dev_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct drm_fb_helper*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_fb_helper*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct omap_fbdev*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 struct omap_fbdev* FUNC6 (struct drm_fb_helper*) ; 

void FUNC7(struct drm_device *dev)
{
	struct omap_drm_private *priv = dev->dev_private;
	struct drm_fb_helper *helper = priv->fbdev;
	struct omap_fbdev *fbdev;

	FUNC0();

	if (!helper)
		return;

	FUNC2(helper);

	FUNC1(helper);

	fbdev = FUNC6(helper);

	/* unpin the GEM object pinned in omap_fbdev_create() */
	if (fbdev->bo)
		FUNC5(fbdev->bo);

	/* this will free the backing object */
	if (fbdev->fb)
		FUNC3(fbdev->fb);

	FUNC4(fbdev);

	priv->fbdev = NULL;
}