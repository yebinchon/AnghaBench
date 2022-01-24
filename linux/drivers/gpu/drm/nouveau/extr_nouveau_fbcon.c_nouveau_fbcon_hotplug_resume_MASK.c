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
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct nouveau_fbdev {int hotplug_waiting; int /*<<< orphan*/  hotplug_lock; TYPE_1__ helper; } ;
struct nouveau_drm {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nouveau_drm*,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct nouveau_drm* FUNC4 (int /*<<< orphan*/ ) ; 

void
FUNC5(struct nouveau_fbdev *fbcon)
{
	struct nouveau_drm *drm;

	if (!fbcon)
		return;
	drm = FUNC4(fbcon->helper.dev);

	FUNC2(&fbcon->hotplug_lock);
	if (fbcon->hotplug_waiting) {
		fbcon->hotplug_waiting = false;

		FUNC0(drm, "Handling deferred fbcon HPD events\n");
		FUNC1(&fbcon->helper);
	}
	FUNC3(&fbcon->hotplug_lock);
}