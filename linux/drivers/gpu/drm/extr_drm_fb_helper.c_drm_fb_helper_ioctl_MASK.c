#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct fb_info {struct drm_fb_helper* par; } ;
struct TYPE_4__ {TYPE_1__* modesets; } ;
struct drm_fb_helper {int /*<<< orphan*/  lock; TYPE_2__ client; struct drm_device* dev; } ;
struct drm_device {int dummy; } ;
struct drm_crtc {int dummy; } ;
struct TYPE_3__ {struct drm_crtc* crtc; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENOTTY ; 
#define  FBIO_WAITFORVSYNC 128 
 int FUNC0 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

int FUNC7(struct fb_info *info, unsigned int cmd,
			unsigned long arg)
{
	struct drm_fb_helper *fb_helper = info->par;
	struct drm_device *dev = fb_helper->dev;
	struct drm_crtc *crtc;
	int ret = 0;

	FUNC5(&fb_helper->lock);
	if (!FUNC3(dev)) {
		ret = -EBUSY;
		goto unlock;
	}

	switch (cmd) {
	case FBIO_WAITFORVSYNC:
		/*
		 * Only consider the first CRTC.
		 *
		 * This ioctl is supposed to take the CRTC number as
		 * an argument, but in fbdev times, what that number
		 * was supposed to be was quite unclear, different
		 * drivers were passing that argument differently
		 * (some by reference, some by value), and most of the
		 * userspace applications were just hardcoding 0 as an
		 * argument.
		 *
		 * The first CRTC should be the integrated panel on
		 * most drivers, so this is the best choice we can
		 * make. If we're not smart enough here, one should
		 * just consider switch the userspace to KMS.
		 */
		crtc = fb_helper->client.modesets[0].crtc;

		/*
		 * Only wait for a vblank event if the CRTC is
		 * enabled, otherwise just don't do anythintg,
		 * not even report an error.
		 */
		ret = FUNC0(crtc);
		if (!ret) {
			FUNC2(crtc);
			FUNC1(crtc);
		}

		ret = 0;
		break;
	default:
		ret = -ENOTTY;
	}

	FUNC4(dev);
unlock:
	FUNC6(&fb_helper->lock);
	return ret;
}