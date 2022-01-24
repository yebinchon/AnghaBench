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
struct TYPE_2__ {int /*<<< orphan*/  handle_count; } ;
struct drm_i915_gem_object {TYPE_1__ base; } ;
struct drm_file {int /*<<< orphan*/  object_idr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (struct drm_i915_gem_object*) ; 
 int FUNC2 (int /*<<< orphan*/ *,TYPE_1__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct drm_file *file,
			    struct drm_i915_gem_object *obj)
{
	int err;

	FUNC0(obj->base.handle_count);

	/* tie the object to the drm_file for easy reaping */
	err = FUNC2(&file->object_idr, &obj->base, 1, 0, GFP_KERNEL);
	if (err < 0)
		return  err;

	FUNC1(obj);
	obj->base.handle_count++;
	return 0;
}