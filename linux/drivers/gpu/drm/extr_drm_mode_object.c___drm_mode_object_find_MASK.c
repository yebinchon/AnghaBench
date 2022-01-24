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
typedef  scalar_t__ uint32_t ;
struct drm_mode_object {scalar_t__ type; scalar_t__ id; int /*<<< orphan*/  refcount; scalar_t__ free_cb; } ;
struct drm_file {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  idr_mutex; int /*<<< orphan*/  object_idr; } ;
struct drm_device {TYPE_1__ mode_config; } ;

/* Variables and functions */
 scalar_t__ DRM_MODE_OBJECT_ANY ; 
 int /*<<< orphan*/  FUNC0 (struct drm_file*,scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 struct drm_mode_object* FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

struct drm_mode_object *FUNC6(struct drm_device *dev,
					       struct drm_file *file_priv,
					       uint32_t id, uint32_t type)
{
	struct drm_mode_object *obj = NULL;

	FUNC4(&dev->mode_config.idr_mutex);
	obj = FUNC2(&dev->mode_config.object_idr, id);
	if (obj && type != DRM_MODE_OBJECT_ANY && obj->type != type)
		obj = NULL;
	if (obj && obj->id != id)
		obj = NULL;

	if (obj && FUNC1(obj->type) &&
	    !FUNC0(file_priv, obj->id))
		obj = NULL;

	if (obj && obj->free_cb) {
		if (!FUNC3(&obj->refcount))
			obj = NULL;
	}
	FUNC5(&dev->mode_config.idr_mutex);

	return obj;
}