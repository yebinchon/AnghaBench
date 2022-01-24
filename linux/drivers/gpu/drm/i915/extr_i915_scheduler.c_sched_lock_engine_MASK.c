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
struct sched_cache {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;
struct intel_engine_cs {TYPE_1__ active; } ;
struct i915_sched_node {int dummy; } ;
struct i915_request {int /*<<< orphan*/  engine; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct intel_engine_cs* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sched_cache*,int /*<<< orphan*/ ,int) ; 
 struct i915_request* FUNC3 (struct i915_sched_node const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct intel_engine_cs *
FUNC6(const struct i915_sched_node *node,
		  struct intel_engine_cs *locked,
		  struct sched_cache *cache)
{
	const struct i915_request *rq = FUNC3(node);
	struct intel_engine_cs *engine;

	FUNC0(!locked);

	/*
	 * Virtual engines complicate acquiring the engine timeline lock,
	 * as their rq->engine pointer is not stable until under that
	 * engine lock. The simple ploy we use is to take the lock then
	 * check that the rq still belongs to the newly locked engine.
	 */
	while (locked != (engine = FUNC1(rq->engine))) {
		FUNC5(&locked->active.lock);
		FUNC2(cache, 0, sizeof(*cache));
		FUNC4(&engine->active.lock);
		locked = engine;
	}

	FUNC0(locked != engine);
	return locked;
}