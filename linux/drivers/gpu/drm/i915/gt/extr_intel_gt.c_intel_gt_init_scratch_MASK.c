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
struct intel_gt {int /*<<< orphan*/  scratch; TYPE_1__* ggtt; struct drm_i915_private* i915; } ;
struct i915_vma {int dummy; } ;
struct drm_i915_private {int dummy; } ;
typedef  struct i915_vma drm_i915_gem_object ;
struct TYPE_2__ {int /*<<< orphan*/  vm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (struct i915_vma*) ; 
 int PIN_GLOBAL ; 
 int PIN_HIGH ; 
 int FUNC2 (struct i915_vma*) ; 
 struct i915_vma* FUNC3 (struct drm_i915_private*,unsigned int) ; 
 struct i915_vma* FUNC4 (struct drm_i915_private*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct i915_vma*) ; 
 struct i915_vma* FUNC6 (struct i915_vma*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct i915_vma*) ; 
 int FUNC8 (struct i915_vma*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

int FUNC9(struct intel_gt *gt, unsigned int size)
{
	struct drm_i915_private *i915 = gt->i915;
	struct drm_i915_gem_object *obj;
	struct i915_vma *vma;
	int ret;

	obj = FUNC4(i915, size);
	if (!obj)
		obj = FUNC3(i915, size);
	if (FUNC1(obj)) {
		FUNC0("Failed to allocate scratch page\n");
		return FUNC2(obj);
	}

	vma = FUNC6(obj, &gt->ggtt->vm, NULL);
	if (FUNC1(vma)) {
		ret = FUNC2(vma);
		goto err_unref;
	}

	ret = FUNC8(vma, 0, 0, PIN_GLOBAL | PIN_HIGH);
	if (ret)
		goto err_unref;

	gt->scratch = FUNC7(vma);

	return 0;

err_unref:
	FUNC5(obj);
	return ret;
}