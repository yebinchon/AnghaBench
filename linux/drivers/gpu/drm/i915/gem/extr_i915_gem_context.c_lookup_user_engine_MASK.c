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
struct intel_engine_cs {int legacy_idx; } ;
struct intel_context {int dummy; } ;
struct i915_gem_context {int /*<<< orphan*/  i915; } ;
struct i915_engine_class_instance {int engine_instance; int /*<<< orphan*/  engine_class; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 struct intel_context* FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned long LOOKUP_USER_INDEX ; 
 struct intel_context* FUNC1 (struct i915_gem_context*,int) ; 
 int FUNC2 (struct i915_gem_context*) ; 
 struct intel_engine_cs* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static struct intel_context *
FUNC4(struct i915_gem_context *ctx,
		   unsigned long flags,
		   const struct i915_engine_class_instance *ci)
#define LOOKUP_USER_INDEX BIT(0)
{
	int idx;

	if (!!(flags & LOOKUP_USER_INDEX) != FUNC2(ctx))
		return FUNC0(-EINVAL);

	if (!FUNC2(ctx)) {
		struct intel_engine_cs *engine;

		engine = FUNC3(ctx->i915,
						  ci->engine_class,
						  ci->engine_instance);
		if (!engine)
			return FUNC0(-EINVAL);

		idx = engine->legacy_idx;
	} else {
		idx = ci->engine_instance;
	}

	return FUNC1(ctx, idx);
}