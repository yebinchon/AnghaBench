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
struct drm_fb_helper {int delayed_hotplug; int /*<<< orphan*/  fbdev; int /*<<< orphan*/  lock; TYPE_1__* fb; int /*<<< orphan*/  client; int /*<<< orphan*/  dev; int /*<<< orphan*/  preferred_bpp; scalar_t__ deferred_setup; } ;
struct TYPE_2__ {int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (struct drm_fb_helper*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  drm_fbdev_emulation ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_fb_helper*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

int FUNC9(struct drm_fb_helper *fb_helper)
{
	int err = 0;

	if (!drm_fbdev_emulation || !fb_helper)
		return 0;

	FUNC7(&fb_helper->lock);
	if (fb_helper->deferred_setup) {
		err = FUNC1(fb_helper,
				fb_helper->preferred_bpp);
		return err;
	}

	if (!fb_helper->fb || !FUNC4(fb_helper->dev)) {
		fb_helper->delayed_hotplug = true;
		FUNC8(&fb_helper->lock);
		return err;
	}

	FUNC5(fb_helper->dev);

	FUNC0("\n");

	FUNC2(&fb_helper->client, fb_helper->fb->width, fb_helper->fb->height);
	FUNC6(fb_helper);
	FUNC8(&fb_helper->lock);

	FUNC3(fb_helper->fbdev);

	return 0;
}