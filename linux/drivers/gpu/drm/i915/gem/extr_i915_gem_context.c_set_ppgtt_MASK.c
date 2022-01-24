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
struct i915_gem_context {TYPE_2__* i915; int /*<<< orphan*/  mutex; struct i915_address_space* vm; } ;
struct i915_address_space {int dummy; } ;
struct drm_i915_gem_context_param {int /*<<< orphan*/  value; scalar_t__ size; } ;
struct drm_i915_file_private {int /*<<< orphan*/  vm_idr_lock; int /*<<< orphan*/  vm_idr; } ;
struct TYPE_3__ {int /*<<< orphan*/  struct_mutex; } ;
struct TYPE_4__ {TYPE_1__ drm; } ;

/* Variables and functions */
 int /*<<< orphan*/  ALL_ENGINES ; 
 int EINVAL ; 
 int ENODEV ; 
 int ENOENT ; 
 struct i915_address_space* FUNC0 (struct i915_gem_context*,struct i915_address_space*) ; 
 int FUNC1 (struct i915_gem_context*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct i915_address_space*) ; 
 int /*<<< orphan*/  emit_ppgtt_update ; 
 int /*<<< orphan*/  FUNC2 (struct i915_address_space*) ; 
 int /*<<< orphan*/  FUNC3 (struct i915_address_space*) ; 
 struct i915_address_space* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct i915_gem_context*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  set_ppgtt_barrier ; 
 int /*<<< orphan*/  skip_ppgtt_update ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct drm_i915_file_private *file_priv,
		     struct i915_gem_context *ctx,
		     struct drm_i915_gem_context_param *args)
{
	struct i915_address_space *vm, *old;
	int err;

	if (args->size)
		return -EINVAL;

	if (!ctx->vm)
		return -ENODEV;

	if (FUNC9(args->value))
		return -ENOENT;

	err = FUNC7(&file_priv->vm_idr_lock);
	if (err)
		return err;

	vm = FUNC4(&file_priv->vm_idr, args->value);
	if (vm)
		FUNC2(vm);
	FUNC8(&file_priv->vm_idr_lock);
	if (!vm)
		return -ENOENT;

	err = FUNC7(&ctx->i915->drm.struct_mutex);
	if (err)
		goto out;

	if (vm == ctx->vm)
		goto unlock;

	/* Teardown the existing obj:vma cache, it will have to be rebuilt. */
	FUNC6(&ctx->mutex);
	FUNC5(ctx);
	FUNC8(&ctx->mutex);

	old = FUNC0(ctx, vm);

	/*
	 * We need to flush any requests using the current ppgtt before
	 * we release it as the requests do not hold a reference themselves,
	 * only indirectly through the context.
	 */
	err = FUNC1(ctx, ALL_ENGINES,
				   skip_ppgtt_update,
				   emit_ppgtt_update,
				   set_ppgtt_barrier,
				   old);
	if (err) {
		FUNC3(FUNC0(ctx, old));
		FUNC3(old);
	}

unlock:
	FUNC8(&ctx->i915->drm.struct_mutex);

out:
	FUNC3(vm);
	return err;
}