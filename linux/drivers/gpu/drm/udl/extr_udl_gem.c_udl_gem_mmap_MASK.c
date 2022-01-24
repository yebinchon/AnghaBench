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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_2__ {int /*<<< orphan*/  vma_node; } ;
struct udl_gem_object {TYPE_1__ base; } ;
struct udl_device {int /*<<< orphan*/  gem_lock; } ;
struct drm_gem_object {int dummy; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int ENOENT ; 
 int FUNC0 (struct drm_gem_object*) ; 
 struct drm_gem_object* FUNC1 (struct drm_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct udl_device* FUNC6 (struct drm_device*) ; 
 struct udl_gem_object* FUNC7 (struct drm_gem_object*) ; 
 int FUNC8 (struct udl_gem_object*) ; 

int FUNC9(struct drm_file *file, struct drm_device *dev,
		 uint32_t handle, uint64_t *offset)
{
	struct udl_gem_object *gobj;
	struct drm_gem_object *obj;
	struct udl_device *udl = FUNC6(dev);
	int ret = 0;

	FUNC4(&udl->gem_lock);
	obj = FUNC1(file, handle);
	if (obj == NULL) {
		ret = -ENOENT;
		goto unlock;
	}
	gobj = FUNC7(obj);

	ret = FUNC8(gobj);
	if (ret)
		goto out;
	ret = FUNC0(obj);
	if (ret)
		goto out;

	*offset = FUNC3(&gobj->base.vma_node);

out:
	FUNC2(&gobj->base);
unlock:
	FUNC5(&udl->gem_lock);
	return ret;
}