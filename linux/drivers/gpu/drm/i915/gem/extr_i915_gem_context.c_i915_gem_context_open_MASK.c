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
struct i915_gem_context {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  struct_mutex; } ;
struct drm_i915_private {TYPE_1__ drm; } ;
struct drm_i915_file_private {int /*<<< orphan*/  context_idr_lock; int /*<<< orphan*/  vm_idr_lock; int /*<<< orphan*/  context_idr; int /*<<< orphan*/  vm_idr; } ;
struct drm_file {struct drm_i915_file_private* driver_priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct i915_gem_context*) ; 
 int FUNC2 (struct i915_gem_context*) ; 
 int /*<<< orphan*/  FUNC3 (struct i915_gem_context*) ; 
 int FUNC4 (struct i915_gem_context*,struct drm_i915_file_private*) ; 
 int FUNC5 (struct i915_gem_context*) ; 
 struct i915_gem_context* FUNC6 (struct drm_i915_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

int FUNC14(struct drm_i915_private *i915,
			  struct drm_file *file)
{
	struct drm_i915_file_private *file_priv = file->driver_priv;
	struct i915_gem_context *ctx;
	int err;

	FUNC11(&file_priv->context_idr_lock);
	FUNC11(&file_priv->vm_idr_lock);

	FUNC8(&file_priv->context_idr);
	FUNC9(&file_priv->vm_idr, 1);

	FUNC12(&i915->drm.struct_mutex);
	ctx = FUNC6(i915, 0);
	FUNC13(&i915->drm.struct_mutex);
	if (FUNC1(ctx)) {
		err = FUNC2(ctx);
		goto err;
	}

	err = FUNC4(ctx, file_priv);
	if (err < 0)
		goto err_ctx;

	FUNC0(FUNC5(ctx));
	FUNC0(err > 0);

	return 0;

err_ctx:
	FUNC3(ctx);
err:
	FUNC7(&file_priv->vm_idr);
	FUNC7(&file_priv->context_idr);
	FUNC10(&file_priv->vm_idr_lock);
	FUNC10(&file_priv->context_idr_lock);
	return err;
}