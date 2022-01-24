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
struct i915_gem_context {int /*<<< orphan*/  mutex; int /*<<< orphan*/  file_priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  EBADF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct i915_gem_context*) ; 
 int /*<<< orphan*/  FUNC2 (struct i915_gem_context*) ; 
 int /*<<< orphan*/  FUNC3 (struct i915_gem_context*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct i915_gem_context*) ; 

__attribute__((used)) static void FUNC7(struct i915_gem_context *ctx)
{
	FUNC4(&ctx->mutex);

	FUNC2(ctx);
	ctx->file_priv = FUNC0(-EBADF);

	/*
	 * This context will never again be assinged to HW, so we can
	 * reuse its ID for the next context.
	 */
	FUNC6(ctx);

	/*
	 * The LUT uses the VMA as a backpointer to unref the object,
	 * so we need to clear the LUT before we close all the VMA (inside
	 * the ppgtt).
	 */
	FUNC3(ctx);

	FUNC5(&ctx->mutex);
	FUNC1(ctx);
}