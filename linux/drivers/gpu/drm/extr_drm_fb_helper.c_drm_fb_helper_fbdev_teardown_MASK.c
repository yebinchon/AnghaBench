#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct fb_ops {int dummy; } ;
struct drm_fb_helper {scalar_t__ fb; TYPE_1__* fbdev; } ;
struct drm_device {struct drm_fb_helper* fb_helper; } ;
struct TYPE_2__ {struct fb_ops* fbops; struct fb_ops* fbdefio; scalar_t__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_fb_helper*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_fb_helper*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (struct fb_ops*) ; 

void FUNC5(struct drm_device *dev)
{
	struct drm_fb_helper *fb_helper = dev->fb_helper;
	struct fb_ops *fbops = NULL;

	if (!fb_helper)
		return;

	/* Unregister if it hasn't been done already */
	if (fb_helper->fbdev && fb_helper->fbdev->dev)
		FUNC1(fb_helper);

	if (fb_helper->fbdev && fb_helper->fbdev->fbdefio) {
		FUNC3(fb_helper->fbdev);
		FUNC4(fb_helper->fbdev->fbdefio);
		fbops = fb_helper->fbdev->fbops;
	}

	FUNC0(fb_helper);
	FUNC4(fbops);

	if (fb_helper->fb)
		FUNC2(fb_helper->fb);
}