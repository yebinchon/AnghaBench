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
typedef  int /*<<< orphan*/  u32 ;
struct drm_gem_open {int /*<<< orphan*/  size; int /*<<< orphan*/  handle; scalar_t__ name; } ;
struct drm_gem_object {int /*<<< orphan*/  size; } ;
struct drm_file {int dummy; } ;
struct drm_device {int /*<<< orphan*/  object_name_lock; int /*<<< orphan*/  object_name_idr; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRIVER_GEM ; 
 int ENOENT ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (struct drm_device*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct drm_file*,struct drm_gem_object*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_gem_object*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_gem_object*) ; 
 struct drm_gem_object* FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

int
FUNC7(struct drm_device *dev, void *data,
		   struct drm_file *file_priv)
{
	struct drm_gem_open *args = data;
	struct drm_gem_object *obj;
	int ret;
	u32 handle;

	if (!FUNC0(dev, DRIVER_GEM))
		return -EOPNOTSUPP;

	FUNC5(&dev->object_name_lock);
	obj = FUNC4(&dev->object_name_idr, (int) args->name);
	if (obj) {
		FUNC2(obj);
	} else {
		FUNC6(&dev->object_name_lock);
		return -ENOENT;
	}

	/* drm_gem_handle_create_tail unlocks dev->object_name_lock. */
	ret = FUNC1(file_priv, obj, &handle);
	FUNC3(obj);
	if (ret)
		return ret;

	args->handle = handle;
	args->size = obj->size;

	return 0;
}