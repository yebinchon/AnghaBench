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
struct intel_timeline {int dummy; } ;
struct i915_gem_context {int /*<<< orphan*/  timeline; } ;

/* Variables and functions */
 int /*<<< orphan*/  __apply_timeline ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct intel_timeline*) ; 
 int /*<<< orphan*/  FUNC1 (struct i915_gem_context*,int /*<<< orphan*/ ,struct intel_timeline*) ; 

__attribute__((used)) static void FUNC2(struct i915_gem_context *ctx,
			      struct intel_timeline *timeline)
{
	FUNC0(&ctx->timeline, timeline);
	FUNC1(ctx, __apply_timeline, timeline);
}