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
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {int /*<<< orphan*/  vma_node; } ;
struct drm_i915_gem_object {TYPE_1__ base; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOENT ; 
 int FUNC0 (struct drm_i915_gem_object*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct drm_i915_gem_object* FUNC2 (struct drm_file*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct drm_i915_gem_object*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_i915_gem_object*) ; 

int
FUNC5(struct drm_file *file,
		  struct drm_device *dev,
		  u32 handle,
		  u64 *offset)
{
	struct drm_i915_gem_object *obj;
	int ret;

	obj = FUNC2(file, handle);
	if (!obj)
		return -ENOENT;

	if (FUNC3(obj)) {
		ret = -ENODEV;
		goto out;
	}

	ret = FUNC0(obj);
	if (ret == 0)
		*offset = FUNC1(&obj->base.vma_node);

out:
	FUNC4(obj);
	return ret;
}