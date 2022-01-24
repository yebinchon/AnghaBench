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
struct i915_gem_context {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct i915_gem_context*) ; 
 int /*<<< orphan*/  FUNC2 (struct i915_gem_context**) ; 
 int /*<<< orphan*/  FUNC3 (struct i915_gem_context*) ; 
 struct i915_gem_context* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct i915_gem_context*) ; 

__attribute__((used)) static void
FUNC6(struct i915_gem_context **ctxp)
{
	struct i915_gem_context *ctx;

	/* Keep the context ref so that we can free it immediately ourselves */
	ctx = FUNC4(FUNC2(ctxp));
	FUNC0(!FUNC5(ctx));

	FUNC1(ctx);
	FUNC3(ctx);
}