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
struct i915_vma {int dummy; } ;
struct i915_address_space {scalar_t__ has_read_only; struct drm_i915_private* i915; } ;
struct i915_ggtt {struct i915_address_space vm; } ;
struct drm_i915_private {int dummy; } ;
typedef  struct i915_vma drm_i915_gem_object ;

/* Variables and functions */
 struct i915_vma* FUNC0 (struct i915_vma*) ; 
 scalar_t__ FUNC1 (struct i915_vma*) ; 
 struct i915_vma* FUNC2 (struct drm_i915_private*,int) ; 
 struct i915_vma* FUNC3 (struct drm_i915_private*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct i915_vma*) ; 
 int /*<<< orphan*/  FUNC5 (struct i915_vma*) ; 
 struct i915_vma* FUNC6 (struct i915_vma*,struct i915_address_space*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct i915_vma *FUNC7(struct i915_ggtt *ggtt, int size)
{
	struct i915_address_space *vm = &ggtt->vm;
	struct drm_i915_private *i915 = vm->i915;
	struct drm_i915_gem_object *obj;
	struct i915_vma *vma;

	obj = FUNC3(i915, size);
	if (!obj)
		obj = FUNC2(i915, size);
	if (FUNC1(obj))
		return FUNC0(obj);

	/*
	 * Mark ring buffers as read-only from GPU side (so no stray overwrites)
	 * if supported by the platform's GGTT.
	 */
	if (vm->has_read_only)
		FUNC5(obj);

	vma = FUNC6(obj, vm, NULL);
	if (FUNC1(vma))
		goto err;

	return vma;

err:
	FUNC4(obj);
	return vma;
}