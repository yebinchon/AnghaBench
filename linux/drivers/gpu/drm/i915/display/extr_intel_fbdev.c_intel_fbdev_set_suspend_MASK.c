#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {struct fb_info* fbdev; } ;
struct intel_fbdev {TYPE_3__ helper; TYPE_1__* fb; int /*<<< orphan*/  vma; } ;
struct fb_info {int /*<<< orphan*/  screen_size; int /*<<< orphan*/  screen_base; } ;
struct drm_i915_private {int /*<<< orphan*/  fbdev_suspend_work; struct intel_fbdev* fbdev; } ;
struct drm_device {int dummy; } ;
struct TYPE_5__ {scalar_t__ stolen; } ;
struct TYPE_4__ {int /*<<< orphan*/  base; } ;

/* Variables and functions */
 int FBINFO_STATE_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct intel_fbdev*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 struct drm_i915_private* FUNC10 (struct drm_device*) ; 

void FUNC11(struct drm_device *dev, int state, bool synchronous)
{
	struct drm_i915_private *dev_priv = FUNC10(dev);
	struct intel_fbdev *ifbdev = dev_priv->fbdev;
	struct fb_info *info;

	if (!ifbdev || !ifbdev->vma)
		return;

	info = ifbdev->helper.fbdev;

	if (synchronous) {
		/* Flush any pending work to turn the console on, and then
		 * wait to turn it off. It must be synchronous as we are
		 * about to suspend or unload the driver.
		 *
		 * Note that from within the work-handler, we cannot flush
		 * ourselves, so only flush outstanding work upon suspend!
		 */
		if (state != FBINFO_STATE_RUNNING)
			FUNC5(&dev_priv->fbdev_suspend_work);

		FUNC1();
	} else {
		/*
		 * The console lock can be pretty contented on resume due
		 * to all the printk activity.  Try to keep it out of the hot
		 * path of resume if possible.
		 */
		FUNC0(state != FBINFO_STATE_RUNNING);
		if (!FUNC2()) {
			/* Don't block our own workqueue as this can
			 * be run in parallel with other i915.ko tasks.
			 */
			FUNC9(&dev_priv->fbdev_suspend_work);
			return;
		}
	}

	/* On resume from hibernation: If the object is shmemfs backed, it has
	 * been restored from swap. If the object is stolen however, it will be
	 * full of whatever garbage was left in there.
	 */
	if (state == FBINFO_STATE_RUNNING &&
	    FUNC6(&ifbdev->fb->base)->stolen)
		FUNC8(info->screen_base, 0, info->screen_size);

	FUNC4(&ifbdev->helper, state);
	FUNC3();

	FUNC7(ifbdev, state);
}