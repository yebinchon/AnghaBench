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
typedef  int /*<<< orphan*/  uint32_t ;
struct drm_mode_object {int id; void (* free_cb ) (struct kref*) ;int /*<<< orphan*/  refcount; int /*<<< orphan*/  type; } ;
struct TYPE_4__ {int /*<<< orphan*/  idr_mutex; int /*<<< orphan*/  object_idr; } ;
struct drm_device {TYPE_2__ mode_config; scalar_t__ registered; TYPE_1__* driver; } ;
struct TYPE_3__ {int /*<<< orphan*/  load; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *,struct drm_mode_object*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(struct drm_device *dev, struct drm_mode_object *obj,
			  uint32_t obj_type, bool register_obj,
			  void (*obj_free_cb)(struct kref *kref))
{
	int ret;

	FUNC0(!dev->driver->load && dev->registered && !obj_free_cb);

	FUNC3(&dev->mode_config.idr_mutex);
	ret = FUNC1(&dev->mode_config.object_idr, register_obj ? obj : NULL,
			1, 0, GFP_KERNEL);
	if (ret >= 0) {
		/*
		 * Set up the object linking under the protection of the idr
		 * lock so that other users can't see inconsistent state.
		 */
		obj->id = ret;
		obj->type = obj_type;
		if (obj_free_cb) {
			obj->free_cb = obj_free_cb;
			FUNC2(&obj->refcount);
		}
	}
	FUNC4(&dev->mode_config.idr_mutex);

	return ret < 0 ? ret : 0;
}