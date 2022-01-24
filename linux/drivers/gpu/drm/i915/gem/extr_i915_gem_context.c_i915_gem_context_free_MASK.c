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
struct i915_gem_context {int /*<<< orphan*/  mutex; int /*<<< orphan*/  link; int /*<<< orphan*/  pid; int /*<<< orphan*/  name; scalar_t__ timeline; int /*<<< orphan*/  jump_whitelist; int /*<<< orphan*/  engines_mutex; int /*<<< orphan*/  engines; scalar_t__ vm; TYPE_2__* i915; } ;
struct TYPE_3__ {int /*<<< orphan*/  struct_mutex; } ;
struct TYPE_4__ {TYPE_1__ drm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct i915_gem_context*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct i915_gem_context*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rcu ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct i915_gem_context*) ; 

__attribute__((used)) static void FUNC13(struct i915_gem_context *ctx)
{
	FUNC8(&ctx->i915->drm.struct_mutex);
	FUNC0(!FUNC2(ctx));

	FUNC12(ctx);
	if (ctx->vm)
		FUNC3(ctx->vm);

	FUNC1(FUNC11(ctx->engines));
	FUNC9(&ctx->engines_mutex);

	FUNC5(ctx->jump_whitelist);

	if (ctx->timeline)
		FUNC4(ctx->timeline);

	FUNC5(ctx->name);
	FUNC10(ctx->pid);

	FUNC7(&ctx->link);
	FUNC9(&ctx->mutex);

	FUNC6(ctx, rcu);
}