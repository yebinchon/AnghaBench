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
struct i915_gem_context {int /*<<< orphan*/  hw_id_pin_count; } ;

/* Variables and functions */
 int FUNC0 (struct i915_gem_context*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline int FUNC2(struct i915_gem_context *ctx)
{
	if (FUNC1(&ctx->hw_id_pin_count))
		return 0;

	return FUNC0(ctx);
}