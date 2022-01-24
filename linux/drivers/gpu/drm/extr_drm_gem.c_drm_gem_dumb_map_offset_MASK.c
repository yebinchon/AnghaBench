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
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct drm_gem_object {int /*<<< orphan*/  vma_node; scalar_t__ import_attach; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 int FUNC0 (struct drm_gem_object*) ; 
 struct drm_gem_object* FUNC1 (struct drm_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_gem_object*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(struct drm_file *file, struct drm_device *dev,
			    u32 handle, u64 *offset)
{
	struct drm_gem_object *obj;
	int ret;

	obj = FUNC1(file, handle);
	if (!obj)
		return -ENOENT;

	/* Don't allow imported objects to be mapped */
	if (obj->import_attach) {
		ret = -EINVAL;
		goto out;
	}

	ret = FUNC0(obj);
	if (ret)
		goto out;

	*offset = FUNC3(&obj->vma_node);
out:
	FUNC2(obj);

	return ret;
}