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
struct drm_mode_object {scalar_t__ id; int /*<<< orphan*/  free_cb; } ;
struct TYPE_4__ {int /*<<< orphan*/  idr_mutex; int /*<<< orphan*/  object_idr; } ;
struct drm_device {TYPE_2__ mode_config; scalar_t__ registered; TYPE_1__* driver; } ;
struct TYPE_3__ {int /*<<< orphan*/  load; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct drm_device *dev,
				struct drm_mode_object *object)
{
	FUNC0(!dev->driver->load && dev->registered && !object->free_cb);

	FUNC2(&dev->mode_config.idr_mutex);
	if (object->id) {
		FUNC1(&dev->mode_config.object_idr, object->id);
		object->id = 0;
	}
	FUNC3(&dev->mode_config.idr_mutex);
}