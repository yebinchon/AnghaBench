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
struct i915_gem_context {TYPE_2__* i915; struct i915_address_space* vm; } ;
struct i915_address_space {int dummy; } ;
struct drm_i915_gem_context_param {int value; scalar_t__ size; } ;
struct drm_i915_file_private {int /*<<< orphan*/  vm_idr_lock; int /*<<< orphan*/  vm_idr; } ;
struct TYPE_3__ {int /*<<< orphan*/  struct_mutex; } ;
struct TYPE_4__ {TYPE_1__ drm; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct i915_address_space* FUNC1 (struct i915_address_space*) ; 
 int /*<<< orphan*/  FUNC2 (struct i915_address_space*) ; 
 int FUNC3 (int /*<<< orphan*/ *,struct i915_address_space*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct drm_i915_file_private *file_priv,
		     struct i915_gem_context *ctx,
		     struct drm_i915_gem_context_param *args)
{
	struct i915_address_space *vm;
	int ret;

	if (!ctx->vm)
		return -ENODEV;

	/* XXX rcu acquire? */
	ret = FUNC4(&ctx->i915->drm.struct_mutex);
	if (ret)
		return ret;

	vm = FUNC1(ctx->vm);
	FUNC5(&ctx->i915->drm.struct_mutex);

	ret = FUNC4(&file_priv->vm_idr_lock);
	if (ret)
		goto err_put;

	ret = FUNC3(&file_priv->vm_idr, vm, 0, 0, GFP_KERNEL);
	FUNC0(!ret);
	if (ret < 0)
		goto err_unlock;

	FUNC1(vm);

	args->size = 0;
	args->value = ret;

	ret = 0;
err_unlock:
	FUNC5(&file_priv->vm_idr_lock);
err_put:
	FUNC2(vm);
	return ret;
}