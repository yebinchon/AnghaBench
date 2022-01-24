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
struct TYPE_2__ {int /*<<< orphan*/  priority; } ;
struct i915_gem_context {TYPE_1__ sched; } ;
struct drm_i915_private {int dummy; } ;

/* Variables and functions */
 struct i915_gem_context* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (struct i915_gem_context*) ; 
 int /*<<< orphan*/  FUNC4 (struct i915_gem_context**) ; 
 int /*<<< orphan*/  FUNC5 (struct i915_gem_context*) ; 
 int /*<<< orphan*/  FUNC6 (struct i915_gem_context*) ; 
 int FUNC7 (struct i915_gem_context*) ; 
 struct i915_gem_context* FUNC8 (struct drm_i915_private*,int /*<<< orphan*/ ) ; 

struct i915_gem_context *
FUNC9(struct drm_i915_private *i915, int prio)
{
	struct i915_gem_context *ctx;
	int err;

	ctx = FUNC8(i915, 0);
	if (FUNC3(ctx))
		return ctx;

	err = FUNC7(ctx);
	if (err) {
		FUNC4(&ctx);
		return FUNC0(err);
	}

	FUNC5(ctx);
	ctx->sched.priority = FUNC2(prio);

	FUNC1(!FUNC6(ctx));

	return ctx;
}