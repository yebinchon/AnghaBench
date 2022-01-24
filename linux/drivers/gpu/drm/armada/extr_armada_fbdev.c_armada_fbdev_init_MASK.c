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
struct drm_device {int /*<<< orphan*/  dev; struct armada_private* dev_private; } ;
struct armada_private {struct drm_fb_helper* fbdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  armada_fb_helper_funcs ; 
 struct drm_fb_helper* FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_fb_helper*) ; 
 int FUNC3 (struct drm_device*,struct drm_fb_helper*,int) ; 
 int FUNC4 (struct drm_fb_helper*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_device*,struct drm_fb_helper*,int /*<<< orphan*/ *) ; 
 int FUNC6 (struct drm_fb_helper*) ; 

int FUNC7(struct drm_device *dev)
{
	struct armada_private *priv = dev->dev_private;
	struct drm_fb_helper *fbh;
	int ret;

	fbh = FUNC1(dev->dev, sizeof(*fbh), GFP_KERNEL);
	if (!fbh)
		return -ENOMEM;

	priv->fbdev = fbh;

	FUNC5(dev, fbh, &armada_fb_helper_funcs);

	ret = FUNC3(dev, fbh, 1);
	if (ret) {
		FUNC0("failed to initialize drm fb helper\n");
		goto err_fb_helper;
	}

	ret = FUNC6(fbh);
	if (ret) {
		FUNC0("failed to add fb connectors\n");
		goto err_fb_setup;
	}

	ret = FUNC4(fbh, 32);
	if (ret) {
		FUNC0("failed to set initial config\n");
		goto err_fb_setup;
	}

	return 0;
 err_fb_setup:
	FUNC2(fbh);
 err_fb_helper:
	priv->fbdev = NULL;
	return ret;
}