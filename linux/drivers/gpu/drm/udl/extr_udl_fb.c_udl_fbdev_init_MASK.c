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
struct udl_fbdev {int /*<<< orphan*/  helper; } ;
struct udl_device {struct udl_fbdev* fbdev; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct drm_device*,int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_device*) ; 
 int fb_bpp ; 
 int /*<<< orphan*/  FUNC6 (struct udl_fbdev*) ; 
 struct udl_fbdev* FUNC7 (int,int /*<<< orphan*/ ) ; 
 struct udl_device* FUNC8 (struct drm_device*) ; 
 int /*<<< orphan*/  udl_fb_helper_funcs ; 

int FUNC9(struct drm_device *dev)
{
	struct udl_device *udl = FUNC8(dev);
	int bpp_sel = fb_bpp;
	struct udl_fbdev *ufbdev;
	int ret;

	ufbdev = FUNC7(sizeof(struct udl_fbdev), GFP_KERNEL);
	if (!ufbdev)
		return -ENOMEM;

	udl->fbdev = ufbdev;

	FUNC3(dev, &ufbdev->helper, &udl_fb_helper_funcs);

	ret = FUNC1(dev, &ufbdev->helper, 1);
	if (ret)
		goto free;

	ret = FUNC4(&ufbdev->helper);
	if (ret)
		goto fini;

	/* disable all the possible outputs/crtcs before entering KMS mode */
	FUNC5(dev);

	ret = FUNC2(&ufbdev->helper, bpp_sel);
	if (ret)
		goto fini;

	return 0;

fini:
	FUNC0(&ufbdev->helper);
free:
	FUNC6(ufbdev);
	return ret;
}