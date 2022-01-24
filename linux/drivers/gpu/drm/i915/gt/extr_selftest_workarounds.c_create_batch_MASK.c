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
struct i915_gem_context {int /*<<< orphan*/  vm; int /*<<< orphan*/  i915; } ;
typedef  struct i915_vma drm_i915_gem_object ;

/* Variables and functions */
 struct i915_vma* FUNC0 (struct i915_vma*) ; 
 struct i915_vma* FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct i915_vma*) ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  PIN_USER ; 
 int FUNC3 (struct i915_vma*) ; 
 struct i915_vma* FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct i915_vma*) ; 
 struct i915_vma* FUNC6 (struct i915_vma*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC7 (struct i915_vma*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct i915_vma *FUNC8(struct i915_gem_context *ctx)
{
	struct drm_i915_gem_object *obj;
	struct i915_vma *vma;
	int err;

	obj = FUNC4(ctx->i915, 16 * PAGE_SIZE);
	if (FUNC2(obj))
		return FUNC0(obj);

	vma = FUNC6(obj, ctx->vm, NULL);
	if (FUNC2(vma)) {
		err = FUNC3(vma);
		goto err_obj;
	}

	err = FUNC7(vma, 0, 0, PIN_USER);
	if (err)
		goto err_obj;

	return vma;

err_obj:
	FUNC5(obj);
	return FUNC1(err);
}