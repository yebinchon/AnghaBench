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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct drm_gem_object {int /*<<< orphan*/  vma_node; int /*<<< orphan*/  filp; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 int FUNC0 (struct drm_gem_object*) ; 
 struct drm_gem_object* FUNC1 (struct drm_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_gem_object*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct drm_file *file, struct drm_device *dev,
			     uint32_t handle, uint64_t *offset)
{
	struct drm_gem_object *obj;
	int ret;

	obj = FUNC1(file, handle);
	if (!obj)
		return -ENOENT;

	if (!obj->filp) {
		ret = -EINVAL;
		goto unref;
	}

	ret = FUNC0(obj);
	if (ret)
		goto unref;

	*offset = FUNC3(&obj->vma_node);
unref:
	FUNC2(obj);

	return ret;
}