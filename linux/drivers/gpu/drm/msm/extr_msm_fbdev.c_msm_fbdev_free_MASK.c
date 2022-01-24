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
struct msm_fbdev {scalar_t__ fb; } ;
struct msm_drm_private {struct drm_fb_helper* fbdev; } ;
struct drm_gem_object {int dummy; } ;
struct drm_fb_helper {int dummy; } ;
struct drm_device {struct msm_drm_private* dev_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct drm_fb_helper*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_fb_helper*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct msm_fbdev*) ; 
 struct drm_gem_object* FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_gem_object*) ; 
 struct msm_fbdev* FUNC7 (struct drm_fb_helper*) ; 

void FUNC8(struct drm_device *dev)
{
	struct msm_drm_private *priv = dev->dev_private;
	struct drm_fb_helper *helper = priv->fbdev;
	struct msm_fbdev *fbdev;

	FUNC0();

	FUNC2(helper);

	FUNC1(helper);

	fbdev = FUNC7(priv->fbdev);

	/* this will free the backing object */
	if (fbdev->fb) {
		struct drm_gem_object *bo =
			FUNC5(fbdev->fb, 0);
		FUNC6(bo);
		FUNC3(fbdev->fb);
	}

	FUNC4(fbdev);

	priv->fbdev = NULL;
}