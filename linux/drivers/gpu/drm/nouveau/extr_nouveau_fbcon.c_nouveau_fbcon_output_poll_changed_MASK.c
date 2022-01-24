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
struct nouveau_fbdev {int hotplug_waiting; int /*<<< orphan*/  hotplug_lock; int /*<<< orphan*/  helper; } ;
struct nouveau_drm {TYPE_1__* dev; struct nouveau_fbdev* fbcon; } ;
struct drm_device {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int EACCES ; 
 int /*<<< orphan*/  FUNC1 (struct nouveau_drm*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct nouveau_drm* FUNC5 (struct drm_device*) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

void
FUNC10(struct drm_device *dev)
{
	struct nouveau_drm *drm = FUNC5(dev);
	struct nouveau_fbdev *fbcon = drm->fbcon;
	int ret;

	if (!fbcon)
		return;

	FUNC3(&fbcon->hotplug_lock);

	ret = FUNC6(dev->dev);
	if (ret == 1 || ret == -EACCES) {
		FUNC2(&fbcon->helper);

		FUNC7(dev->dev);
		FUNC8(dev->dev);
	} else if (ret == 0) {
		/* If the GPU was already in the process of suspending before
		 * this event happened, then we can't block here as we'll
		 * deadlock the runtime pmops since they wait for us to
		 * finish. So, just defer this event for when we runtime
		 * resume again. It will be handled by fbcon_work.
		 */
		FUNC1(drm, "fbcon HPD event deferred until runtime resume\n");
		fbcon->hotplug_waiting = true;
		FUNC9(drm->dev->dev);
	} else {
		FUNC0("fbcon HPD event lost due to RPM failure: %d\n",
			 ret);
	}

	FUNC4(&fbcon->hotplug_lock);
}