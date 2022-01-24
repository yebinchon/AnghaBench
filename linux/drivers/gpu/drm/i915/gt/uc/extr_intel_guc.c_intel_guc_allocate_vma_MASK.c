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
typedef  int u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct intel_guc {int dummy; } ;
struct intel_gt {TYPE_1__* ggtt; int /*<<< orphan*/  i915; } ;
struct i915_vma {int dummy; } ;
typedef  struct i915_vma drm_i915_gem_object ;
struct TYPE_2__ {int /*<<< orphan*/  vm; } ;

/* Variables and functions */
 struct i915_vma* FUNC0 (struct i915_vma*) ; 
 struct i915_vma* FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct i915_vma*) ; 
 int PIN_GLOBAL ; 
 int PIN_OFFSET_BIAS ; 
 struct intel_gt* FUNC3 (struct intel_guc*) ; 
 struct i915_vma* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct i915_vma*) ; 
 int FUNC6 (struct i915_vma*) ; 
 struct i915_vma* FUNC7 (struct i915_vma*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct i915_vma* FUNC8 (struct i915_vma*) ; 
 int FUNC9 (struct i915_vma*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

struct i915_vma *FUNC10(struct intel_guc *guc, u32 size)
{
	struct intel_gt *gt = FUNC3(guc);
	struct drm_i915_gem_object *obj;
	struct i915_vma *vma;
	u64 flags;
	int ret;

	obj = FUNC4(gt->i915, size);
	if (FUNC2(obj))
		return FUNC0(obj);

	vma = FUNC7(obj, &gt->ggtt->vm, NULL);
	if (FUNC2(vma))
		goto err;

	flags = PIN_GLOBAL | PIN_OFFSET_BIAS | FUNC6(vma);
	ret = FUNC9(vma, 0, 0, flags);
	if (ret) {
		vma = FUNC1(ret);
		goto err;
	}

	return FUNC8(vma);

err:
	FUNC5(obj);
	return vma;
}