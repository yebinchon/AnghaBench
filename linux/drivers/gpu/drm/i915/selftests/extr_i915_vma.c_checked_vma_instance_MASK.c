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
struct i915_ggtt_view {int dummy; } ;
struct i915_vma {struct i915_ggtt_view const ggtt_view; struct i915_address_space* vm; } ;
struct i915_address_space {int dummy; } ;
struct drm_i915_gem_object {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 struct i915_vma* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct i915_vma*) ; 
 int /*<<< orphan*/  FUNC2 (struct i915_address_space*) ; 
 scalar_t__ FUNC3 (struct i915_vma*,struct i915_address_space*,struct i915_ggtt_view const*) ; 
 struct i915_vma* FUNC4 (struct drm_i915_gem_object*,struct i915_address_space*,struct i915_ggtt_view const*) ; 
 int /*<<< orphan*/  FUNC5 (struct i915_vma*) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 

__attribute__((used)) static struct i915_vma *
FUNC7(struct drm_i915_gem_object *obj,
		     struct i915_address_space *vm,
		     const struct i915_ggtt_view *view)
{
	struct i915_vma *vma;
	bool ok = true;

	vma = FUNC4(obj, vm, view);
	if (FUNC1(vma))
		return vma;

	/* Manual checks, will be reinforced by i915_vma_compare! */
	if (vma->vm != vm) {
		FUNC6("VMA's vm [%p] does not match request [%p]\n",
		       vma->vm, vm);
		ok = false;
	}

	if (FUNC2(vm) != FUNC5(vma)) {
		FUNC6("VMA ggtt status [%d] does not match parent [%d]\n",
		       FUNC5(vma), FUNC2(vm));
		ok = false;
	}

	if (FUNC3(vma, vm, view)) {
		FUNC6("i915_vma_compare failed with create parameters!\n");
		return FUNC0(-EINVAL);
	}

	if (FUNC3(vma, vma->vm,
			     FUNC5(vma) ? &vma->ggtt_view : NULL)) {
		FUNC6("i915_vma_compare failed with itself\n");
		return FUNC0(-EINVAL);
	}

	if (!ok) {
		FUNC6("i915_vma_compare failed to detect the difference!\n");
		return FUNC0(-EINVAL);
	}

	return vma;
}