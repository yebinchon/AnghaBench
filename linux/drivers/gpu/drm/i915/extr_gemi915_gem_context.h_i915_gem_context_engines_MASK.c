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
struct i915_gem_engines {int dummy; } ;
struct i915_gem_context {int /*<<< orphan*/  engines_mutex; int /*<<< orphan*/  engines; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct i915_gem_engines* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline struct i915_gem_engines *
FUNC2(struct i915_gem_context *ctx)
{
	return FUNC1(ctx->engines,
					 FUNC0(&ctx->engines_mutex));
}