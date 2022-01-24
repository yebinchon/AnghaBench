#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct intel_engine_cs {int dummy; } ;
struct i915_gem_engines {unsigned long num_engines; TYPE_1__** engines; int /*<<< orphan*/  rcu; } ;
struct i915_gem_context {int /*<<< orphan*/  engines; } ;
struct TYPE_4__ {struct intel_engine_cs* engine; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct i915_gem_engines*) ; 
 int /*<<< orphan*/  FUNC2 (struct i915_gem_engines*,unsigned long) ; 
 int /*<<< orphan*/  engines ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct i915_gem_context*) ; 
 struct i915_gem_engines* FUNC5 (struct i915_gem_context*) ; 
 int /*<<< orphan*/  FUNC6 (struct i915_gem_context*) ; 
 int /*<<< orphan*/  FUNC7 (struct i915_gem_context*) ; 
 int FUNC8 (struct i915_gem_context*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC10 (struct i915_gem_context*,struct intel_engine_cs*) ; 
 scalar_t__ FUNC11 (struct intel_engine_cs*) ; 
 TYPE_1__* FUNC12 (struct i915_gem_context*,struct intel_engine_cs*) ; 
 struct i915_gem_engines* FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct i915_gem_engines*,int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static int FUNC15(struct i915_gem_context *dst,
			 struct i915_gem_context *src)
{
	struct i915_gem_engines *e = FUNC5(src);
	struct i915_gem_engines *clone;
	bool user_engines;
	unsigned long n;

	clone = FUNC13(FUNC14(e, engines, e->num_engines), GFP_KERNEL);
	if (!clone)
		goto err_unlock;

	FUNC9(&clone->rcu);
	for (n = 0; n < e->num_engines; n++) {
		struct intel_engine_cs *engine;

		if (!e->engines[n]) {
			clone->engines[n] = NULL;
			continue;
		}
		engine = e->engines[n]->engine;

		/*
		 * Virtual engines are singletons; they can only exist
		 * inside a single context, because they embed their
		 * HW context... As each virtual context implies a single
		 * timeline (each engine can only dequeue a single request
		 * at any time), it would be surprising for two contexts
		 * to use the same engine. So let's create a copy of
		 * the virtual engine instead.
		 */
		if (FUNC11(engine))
			clone->engines[n] =
				FUNC12(dst, engine);
		else
			clone->engines[n] = FUNC10(dst, engine);
		if (FUNC0(clone->engines[n])) {
			FUNC2(clone, n);
			goto err_unlock;
		}
	}
	clone->num_engines = n;

	user_engines = FUNC8(src);
	FUNC7(src);

	FUNC3(dst->engines);
	FUNC1(dst->engines, clone);
	if (user_engines)
		FUNC6(dst);
	else
		FUNC4(dst);
	return 0;

err_unlock:
	FUNC7(src);
	return -ENOMEM;
}