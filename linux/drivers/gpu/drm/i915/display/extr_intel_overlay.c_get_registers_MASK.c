#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct intel_overlay {struct i915_vma* reg_bo; struct i915_vma* regs; int /*<<< orphan*/  flip_addr; struct drm_i915_private* i915; } ;
struct TYPE_5__ {TYPE_1__* pages; } ;
struct i915_vma {TYPE_2__ mm; } ;
struct TYPE_6__ {int /*<<< orphan*/  struct_mutex; } ;
struct drm_i915_private {TYPE_3__ drm; } ;
struct drm_i915_gem_object {TYPE_2__ mm; } ;
struct TYPE_4__ {int /*<<< orphan*/  sgl; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct i915_vma*) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  PIN_MAPPABLE ; 
 int FUNC1 (struct i915_vma*) ; 
 struct i915_vma* FUNC2 (struct drm_i915_private*,int /*<<< orphan*/ ) ; 
 struct i915_vma* FUNC3 (struct drm_i915_private*,int /*<<< orphan*/ ) ; 
 struct i915_vma* FUNC4 (struct i915_vma*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct i915_vma*) ; 
 int /*<<< orphan*/  FUNC6 (struct i915_vma*) ; 
 struct i915_vma* FUNC7 (struct i915_vma*) ; 
 int /*<<< orphan*/  FUNC8 (struct i915_vma*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct intel_overlay *overlay, bool use_phys)
{
	struct drm_i915_private *i915 = overlay->i915;
	struct drm_i915_gem_object *obj;
	struct i915_vma *vma;
	int err;

	FUNC9(&i915->drm.struct_mutex);

	obj = FUNC3(i915, PAGE_SIZE);
	if (obj == NULL)
		obj = FUNC2(i915, PAGE_SIZE);
	if (FUNC0(obj)) {
		err = FUNC1(obj);
		goto err_unlock;
	}

	vma = FUNC4(obj, NULL, 0, 0, PIN_MAPPABLE);
	if (FUNC0(vma)) {
		err = FUNC1(vma);
		goto err_put_bo;
	}

	if (use_phys)
		overlay->flip_addr = FUNC11(obj->mm.pages->sgl);
	else
		overlay->flip_addr = FUNC6(vma);
	overlay->regs = FUNC7(vma);
	FUNC8(vma);

	if (FUNC0(overlay->regs)) {
		err = FUNC1(overlay->regs);
		goto err_put_bo;
	}

	overlay->reg_bo = obj;
	FUNC10(&i915->drm.struct_mutex);
	return 0;

err_put_bo:
	FUNC5(obj);
err_unlock:
	FUNC10(&i915->drm.struct_mutex);
	return err;
}