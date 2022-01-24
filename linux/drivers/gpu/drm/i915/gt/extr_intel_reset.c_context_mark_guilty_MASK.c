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
struct i915_gem_context {unsigned long* hang_timestamp; int /*<<< orphan*/  file_priv; int /*<<< orphan*/  guilty_count; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int FUNC0 (unsigned long*) ; 
 scalar_t__ CONTEXT_FAST_HANG_JIFFIES ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct i915_gem_context*) ; 
 int /*<<< orphan*/  FUNC6 (struct i915_gem_context*) ; 
 int /*<<< orphan*/  FUNC7 (struct i915_gem_context*) ; 
 int /*<<< orphan*/  FUNC8 (struct i915_gem_context*) ; 
 unsigned long jiffies ; 
 scalar_t__ FUNC9 (unsigned long,scalar_t__) ; 

__attribute__((used)) static bool FUNC10(struct i915_gem_context *ctx)
{
	unsigned long prev_hang;
	bool banned;
	int i;

	FUNC3(&ctx->guilty_count);

	/* Cool contexts are too cool to be banned! (Used for reset testing.) */
	if (!FUNC6(ctx))
		return false;

	/* Record the timestamp for the last N hangs */
	prev_hang = ctx->hang_timestamp[0];
	for (i = 0; i < FUNC0(ctx->hang_timestamp) - 1; i++)
		ctx->hang_timestamp[i] = ctx->hang_timestamp[i + 1];
	ctx->hang_timestamp[i] = jiffies;

	/* If we have hung N+1 times in rapid succession, we ban the context! */
	banned = !FUNC7(ctx);
	if (FUNC9(jiffies, prev_hang + CONTEXT_FAST_HANG_JIFFIES))
		banned = true;
	if (banned) {
		FUNC1("context %s: guilty %d, banned\n",
				 ctx->name, FUNC4(&ctx->guilty_count));
		FUNC8(ctx);
	}

	if (!FUNC2(ctx->file_priv))
		FUNC5(ctx->file_priv, ctx);

	return banned;
}