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
struct i915_ppgtt {int /*<<< orphan*/  vm; } ;
struct i915_gem_engines {int dummy; } ;
struct i915_gem_context {int /*<<< orphan*/  engines; int /*<<< orphan*/  name; int /*<<< orphan*/  mutex; int /*<<< orphan*/  hw_id_link; int /*<<< orphan*/  handles_vma; int /*<<< orphan*/  engines_mutex; struct drm_i915_private* i915; int /*<<< orphan*/  link; int /*<<< orphan*/  ref; } ;
struct drm_i915_private {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct i915_gem_engines*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct i915_gem_engines*) ; 
 int /*<<< orphan*/  FUNC4 (struct i915_gem_context*,int /*<<< orphan*/ *) ; 
 struct i915_gem_engines* FUNC5 (struct i915_gem_context*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (struct i915_gem_context*) ; 
 int /*<<< orphan*/  FUNC8 (struct i915_gem_context*) ; 
 int /*<<< orphan*/  FUNC9 (struct i915_gem_context*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct i915_gem_context*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (char const*,int /*<<< orphan*/ ) ; 
 struct i915_gem_context* FUNC14 (int,int /*<<< orphan*/ ) ; 
 struct i915_ppgtt* FUNC15 (struct drm_i915_private*,char const*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 

struct i915_gem_context *
FUNC18(struct drm_i915_private *i915,
	     const char *name)
{
	struct i915_gem_context *ctx;
	struct i915_gem_engines *e;
	int ret;

	ctx = FUNC14(sizeof(*ctx), GFP_KERNEL);
	if (!ctx)
		return NULL;

	FUNC12(&ctx->ref);
	FUNC0(&ctx->link);
	ctx->i915 = i915;

	FUNC16(&ctx->engines_mutex);
	e = FUNC5(ctx);
	if (FUNC2(e))
		goto err_free;
	FUNC3(ctx->engines, e);

	FUNC1(&ctx->handles_vma, GFP_KERNEL);
	FUNC0(&ctx->hw_id_link);
	FUNC16(&ctx->mutex);

	ret = FUNC7(ctx);
	if (ret < 0)
		goto err_engines;

	if (name) {
		struct i915_ppgtt *ppgtt;

		ctx->name = FUNC13(name, GFP_KERNEL);
		if (!ctx->name)
			goto err_put;

		ppgtt = FUNC15(i915, name);
		if (!ppgtt)
			goto err_put;

		FUNC4(ctx, &ppgtt->vm);
		FUNC10(&ppgtt->vm);
	}

	return ctx;

err_engines:
	FUNC6(FUNC17(ctx->engines));
err_free:
	FUNC11(ctx);
	return NULL;

err_put:
	FUNC9(ctx);
	FUNC8(ctx);
	return NULL;
}