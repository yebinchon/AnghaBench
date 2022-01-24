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
struct psb_fbdev {int /*<<< orphan*/  psb_fb_helper; } ;
struct drm_psb_private {struct psb_fbdev* fbdev; } ;
struct drm_device {int /*<<< orphan*/  dev; struct drm_psb_private* dev_private; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  INTELFB_CONN_LIMIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct drm_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct psb_fbdev*) ; 
 struct psb_fbdev* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  psb_fb_helper_funcs ; 

int FUNC9(struct drm_device *dev)
{
	struct psb_fbdev *fbdev;
	struct drm_psb_private *dev_priv = dev->dev_private;
	int ret;

	fbdev = FUNC8(sizeof(struct psb_fbdev), GFP_KERNEL);
	if (!fbdev) {
		FUNC0(dev->dev, "no memory\n");
		return -ENOMEM;
	}

	dev_priv->fbdev = fbdev;

	FUNC4(dev, &fbdev->psb_fb_helper, &psb_fb_helper_funcs);

	ret = FUNC2(dev, &fbdev->psb_fb_helper,
				 INTELFB_CONN_LIMIT);
	if (ret)
		goto free;

	ret = FUNC5(&fbdev->psb_fb_helper);
	if (ret)
		goto fini;

	/* disable all the possible outputs/crtcs before entering KMS mode */
	FUNC6(dev);

	ret = FUNC3(&fbdev->psb_fb_helper, 32);
	if (ret)
		goto fini;

	return 0;

fini:
	FUNC1(&fbdev->psb_fb_helper);
free:
	FUNC7(fbdev);
	return ret;
}