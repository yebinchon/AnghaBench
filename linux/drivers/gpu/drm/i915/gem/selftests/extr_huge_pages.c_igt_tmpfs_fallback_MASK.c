#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct vfsmount {int dummy; } ;
typedef  int i915_vma ;
struct i915_gem_context {int /*<<< orphan*/  vm; struct drm_i915_private* i915; } ;
struct i915_address_space {int dummy; } ;
struct TYPE_4__ {struct vfsmount* gemfs; } ;
struct TYPE_3__ {struct i915_address_space vm; } ;
struct drm_i915_private {TYPE_2__ mm; TYPE_1__ ggtt; } ;
typedef  int drm_i915_gem_object ;

/* Variables and functions */
 int /*<<< orphan*/  I915_MAP_WB ; 
 scalar_t__ FUNC0 (int*) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  PIN_USER ; 
 int FUNC1 (int*) ; 
 int /*<<< orphan*/  FUNC2 (int*,int /*<<< orphan*/ ,int) ; 
 int* FUNC3 (struct drm_i915_private*,int /*<<< orphan*/ ) ; 
 int* FUNC4 (int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int*) ; 
 int /*<<< orphan*/  FUNC6 (int*) ; 
 int /*<<< orphan*/  FUNC7 (int*) ; 
 int* FUNC8 (int*,struct i915_address_space*,int /*<<< orphan*/ *) ; 
 int FUNC9 (int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int*) ; 
 int FUNC11 (int*) ; 

__attribute__((used)) static int FUNC12(void *arg)
{
	struct i915_gem_context *ctx = arg;
	struct drm_i915_private *i915 = ctx->i915;
	struct vfsmount *gemfs = i915->mm.gemfs;
	struct i915_address_space *vm = ctx->vm ?: &i915->ggtt.vm;
	struct drm_i915_gem_object *obj;
	struct i915_vma *vma;
	u32 *vaddr;
	int err = 0;

	/*
	 * Make sure that we don't burst into a ball of flames upon falling back
	 * to tmpfs, which we rely on if on the off-chance we encouter a failure
	 * when setting up gemfs.
	 */

	i915->mm.gemfs = NULL;

	obj = FUNC3(i915, PAGE_SIZE);
	if (FUNC0(obj)) {
		err = FUNC1(obj);
		goto out_restore;
	}

	vaddr = FUNC4(obj, I915_MAP_WB);
	if (FUNC0(vaddr)) {
		err = FUNC1(vaddr);
		goto out_put;
	}
	*vaddr = 0xdeadbeaf;

	FUNC2(obj, 0, 64);
	FUNC6(obj);

	vma = FUNC8(obj, vm, NULL);
	if (FUNC0(vma)) {
		err = FUNC1(vma);
		goto out_put;
	}

	err = FUNC9(vma, 0, 0, PIN_USER);
	if (err)
		goto out_close;

	err = FUNC11(vma);

	FUNC10(vma);
out_close:
	FUNC7(vma);
out_put:
	FUNC5(obj);
out_restore:
	i915->mm.gemfs = gemfs;

	return err;
}