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
struct intel_gt {TYPE_1__* ggtt; struct drm_i915_private* i915; } ;
struct i915_vma {int dummy; } ;
struct drm_i915_private {int dummy; } ;
typedef  struct i915_vma drm_i915_gem_object ;
struct TYPE_2__ {int /*<<< orphan*/  vm; } ;

/* Variables and functions */
 struct i915_vma* FUNC0 (struct i915_vma*) ; 
 int /*<<< orphan*/  I915_CACHE_LLC ; 
 scalar_t__ FUNC1 (struct i915_vma*) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 struct i915_vma* FUNC2 (struct drm_i915_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct i915_vma*) ; 
 int /*<<< orphan*/  FUNC4 (struct i915_vma*,int /*<<< orphan*/ ) ; 
 struct i915_vma* FUNC5 (struct i915_vma*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct i915_vma *FUNC6(struct intel_gt *gt)
{
	struct drm_i915_private *i915 = gt->i915;
	struct drm_i915_gem_object *obj;
	struct i915_vma *vma;

	obj = FUNC2(i915, PAGE_SIZE);
	if (FUNC1(obj))
		return FUNC0(obj);

	FUNC4(obj, I915_CACHE_LLC);

	vma = FUNC5(obj, &gt->ggtt->vm, NULL);
	if (FUNC1(vma))
		FUNC3(obj);

	return vma;
}