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
struct i915_gem_engines {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  priority; } ;
struct i915_gem_context {scalar_t__ jump_whitelist_cmds; int /*<<< orphan*/ * jump_whitelist; scalar_t__* hang_timestamp; int /*<<< orphan*/  remap_slice; int /*<<< orphan*/  hw_id_link; int /*<<< orphan*/  handles_vma; int /*<<< orphan*/  engines; int /*<<< orphan*/  engines_mutex; int /*<<< orphan*/  mutex; TYPE_2__ sched; struct drm_i915_private* i915; int /*<<< orphan*/  link; int /*<<< orphan*/  ref; } ;
struct TYPE_3__ {int /*<<< orphan*/  list; } ;
struct drm_i915_private {TYPE_1__ contexts; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_i915_private*) ; 
 int FUNC1 (scalar_t__*) ; 
 scalar_t__ CONTEXT_FAST_HANG_JIFFIES ; 
 int ENOMEM ; 
 struct i915_gem_context* FUNC2 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  I915_PRIORITY_NORMAL ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct i915_gem_engines*) ; 
 int FUNC7 (struct i915_gem_engines*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct i915_gem_engines*) ; 
 struct i915_gem_engines* FUNC9 (struct i915_gem_context*) ; 
 int /*<<< orphan*/  FUNC10 (struct i915_gem_context*) ; 
 int /*<<< orphan*/  FUNC11 (struct i915_gem_context*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC12 (struct i915_gem_context*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 struct i915_gem_context* FUNC14 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct i915_gem_context *
FUNC17(struct drm_i915_private *i915)
{
	struct i915_gem_context *ctx;
	struct i915_gem_engines *e;
	int err;
	int i;

	ctx = FUNC14(sizeof(*ctx), GFP_KERNEL);
	if (!ctx)
		return FUNC2(-ENOMEM);

	FUNC13(&ctx->ref);
	FUNC15(&ctx->link, &i915->contexts.list);
	ctx->i915 = i915;
	ctx->sched.priority = FUNC3(I915_PRIORITY_NORMAL);
	FUNC16(&ctx->mutex);

	FUNC16(&ctx->engines_mutex);
	e = FUNC9(ctx);
	if (FUNC6(e)) {
		err = FUNC7(e);
		goto err_free;
	}
	FUNC8(ctx->engines, e);

	FUNC5(&ctx->handles_vma, GFP_KERNEL);
	FUNC4(&ctx->hw_id_link);

	/* NB: Mark all slices as needing a remap so that when the context first
	 * loads it will restore whatever remap state already exists. If there
	 * is no remap info, it will be a NOP. */
	ctx->remap_slice = FUNC0(i915);

	FUNC10(ctx);
	FUNC11(ctx);

	for (i = 0; i < FUNC1(ctx->hang_timestamp); i++)
		ctx->hang_timestamp[i] = jiffies - CONTEXT_FAST_HANG_JIFFIES;

	ctx->jump_whitelist = NULL;
	ctx->jump_whitelist_cmds = 0;

	return ctx;

err_free:
	FUNC12(ctx);
	return FUNC2(err);
}