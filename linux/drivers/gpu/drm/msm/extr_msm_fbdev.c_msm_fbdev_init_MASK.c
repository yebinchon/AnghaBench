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
struct msm_fbdev {struct drm_fb_helper base; } ;
struct msm_drm_private {struct drm_fb_helper* fbdev; int /*<<< orphan*/  num_connectors; } ;
struct drm_device {int /*<<< orphan*/  dev; struct msm_drm_private* dev_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (struct drm_fb_helper*) ; 
 int FUNC2 (struct drm_device*,struct drm_fb_helper*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct drm_fb_helper*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_device*,struct drm_fb_helper*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC6 (struct drm_fb_helper*) ; 
 int /*<<< orphan*/  FUNC7 (struct msm_fbdev*) ; 
 struct msm_fbdev* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  msm_fb_helper_funcs ; 

struct drm_fb_helper *FUNC9(struct drm_device *dev)
{
	struct msm_drm_private *priv = dev->dev_private;
	struct msm_fbdev *fbdev = NULL;
	struct drm_fb_helper *helper;
	int ret;

	fbdev = FUNC8(sizeof(*fbdev), GFP_KERNEL);
	if (!fbdev)
		goto fail;

	helper = &fbdev->base;

	FUNC4(dev, helper, &msm_fb_helper_funcs);

	ret = FUNC2(dev, helper, priv->num_connectors);
	if (ret) {
		FUNC0(dev->dev, "could not init fbdev: ret=%d\n", ret);
		goto fail;
	}

	ret = FUNC6(helper);
	if (ret)
		goto fini;

	/* the fw fb could be anywhere in memory */
	FUNC5(NULL, "msm", false);

	ret = FUNC3(helper, 32);
	if (ret)
		goto fini;

	priv->fbdev = helper;

	return helper;

fini:
	FUNC1(helper);
fail:
	FUNC7(fbdev);
	return NULL;
}