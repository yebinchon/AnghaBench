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
typedef  scalar_t__ uint64_t ;
struct drm_gem_object {scalar_t__ handle_count; int name; } ;
struct drm_gem_flink {scalar_t__ name; int /*<<< orphan*/  handle; } ;
struct drm_file {int dummy; } ;
struct drm_device {int /*<<< orphan*/  object_name_lock; int /*<<< orphan*/  object_name_idr; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRIVER_GEM ; 
 int ENOENT ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct drm_device*,int /*<<< orphan*/ ) ; 
 struct drm_gem_object* FUNC1 (struct drm_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_gem_object*) ; 
 int FUNC3 (int /*<<< orphan*/ *,struct drm_gem_object*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int
FUNC6(struct drm_device *dev, void *data,
		    struct drm_file *file_priv)
{
	struct drm_gem_flink *args = data;
	struct drm_gem_object *obj;
	int ret;

	if (!FUNC0(dev, DRIVER_GEM))
		return -EOPNOTSUPP;

	obj = FUNC1(file_priv, args->handle);
	if (obj == NULL)
		return -ENOENT;

	FUNC4(&dev->object_name_lock);
	/* prevent races with concurrent gem_close. */
	if (obj->handle_count == 0) {
		ret = -ENOENT;
		goto err;
	}

	if (!obj->name) {
		ret = FUNC3(&dev->object_name_idr, obj, 1, 0, GFP_KERNEL);
		if (ret < 0)
			goto err;

		obj->name = ret;
	}

	args->name = (uint64_t) obj->name;
	ret = 0;

err:
	FUNC5(&dev->object_name_lock);
	FUNC2(obj);
	return ret;
}