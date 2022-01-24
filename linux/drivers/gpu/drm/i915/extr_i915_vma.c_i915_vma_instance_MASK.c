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
struct i915_vma {int dummy; } ;
struct i915_ggtt_view {int dummy; } ;
struct i915_address_space {int closed; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;
struct drm_i915_gem_object {TYPE_1__ vma; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct i915_vma*) ; 
 int /*<<< orphan*/  FUNC2 (struct i915_address_space*) ; 
 scalar_t__ FUNC3 (struct i915_vma*,struct i915_address_space*,struct i915_ggtt_view const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int) ; 
 struct i915_vma* FUNC7 (struct drm_i915_gem_object*,struct i915_address_space*,struct i915_ggtt_view const*) ; 
 struct i915_vma* FUNC8 (struct drm_i915_gem_object*,struct i915_address_space*,struct i915_ggtt_view const*) ; 

struct i915_vma *
FUNC9(struct drm_i915_gem_object *obj,
		  struct i915_address_space *vm,
		  const struct i915_ggtt_view *view)
{
	struct i915_vma *vma;

	FUNC0(view && !FUNC2(vm));
	FUNC0(vm->closed);

	FUNC4(&obj->vma.lock);
	vma = FUNC8(obj, vm, view);
	FUNC5(&obj->vma.lock);

	/* vma_create() will resolve the race if another creates the vma */
	if (FUNC6(!vma))
		vma = FUNC7(obj, vm, view);

	FUNC0(!FUNC1(vma) && FUNC3(vma, vm, view));
	return vma;
}