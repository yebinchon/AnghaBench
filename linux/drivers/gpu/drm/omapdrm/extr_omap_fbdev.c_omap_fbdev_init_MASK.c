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
struct drm_fb_helper {int dummy; } ;
struct omap_fbdev {struct drm_fb_helper base; int /*<<< orphan*/  work; } ;
struct omap_drm_private {struct drm_fb_helper* fbdev; int /*<<< orphan*/  num_pipes; } ;
struct drm_device {int /*<<< orphan*/  dev; struct omap_drm_private* dev_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_fb_helper*) ; 
 int FUNC3 (struct drm_device*,struct drm_fb_helper*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct drm_fb_helper*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_device*,struct drm_fb_helper*,int /*<<< orphan*/ *) ; 
 int FUNC6 (struct drm_fb_helper*) ; 
 int /*<<< orphan*/  FUNC7 (struct omap_fbdev*) ; 
 struct omap_fbdev* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  omap_fb_helper_funcs ; 
 int /*<<< orphan*/  pan_worker ; 

void FUNC9(struct drm_device *dev)
{
	struct omap_drm_private *priv = dev->dev_private;
	struct omap_fbdev *fbdev = NULL;
	struct drm_fb_helper *helper;
	int ret = 0;

	if (!priv->num_pipes)
		return;

	fbdev = FUNC8(sizeof(*fbdev), GFP_KERNEL);
	if (!fbdev)
		goto fail;

	FUNC0(&fbdev->work, pan_worker);

	helper = &fbdev->base;

	FUNC5(dev, helper, &omap_fb_helper_funcs);

	ret = FUNC3(dev, helper, priv->num_pipes);
	if (ret)
		goto fail;

	ret = FUNC6(helper);
	if (ret)
		goto fini;

	ret = FUNC4(helper, 32);
	if (ret)
		goto fini;

	priv->fbdev = helper;

	return;

fini:
	FUNC2(helper);
fail:
	FUNC7(fbdev);

	FUNC1(dev->dev, "omap_fbdev_init failed\n");
}