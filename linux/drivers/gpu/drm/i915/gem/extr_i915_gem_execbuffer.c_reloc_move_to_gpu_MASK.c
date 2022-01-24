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
struct i915_vma {struct drm_i915_gem_object* obj; } ;
struct i915_request {int dummy; } ;
struct drm_i915_gem_object {int cache_dirty; int cache_coherent; scalar_t__ write_domain; } ;

/* Variables and functions */
 int /*<<< orphan*/  EXEC_OBJECT_WRITE ; 
 int /*<<< orphan*/  FUNC0 (struct drm_i915_gem_object*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct i915_request*,struct drm_i915_gem_object*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct i915_vma*) ; 
 int FUNC3 (struct i915_vma*,struct i915_request*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct i915_vma*) ; 

__attribute__((used)) static int FUNC5(struct i915_request *rq, struct i915_vma *vma)
{
	struct drm_i915_gem_object *obj = vma->obj;
	int err;

	FUNC2(vma);

	if (obj->cache_dirty & ~obj->cache_coherent)
		FUNC0(obj, 0);
	obj->write_domain = 0;

	err = FUNC1(rq, vma->obj, true);
	if (err == 0)
		err = FUNC3(vma, rq, EXEC_OBJECT_WRITE);

	FUNC4(vma);

	return err;
}