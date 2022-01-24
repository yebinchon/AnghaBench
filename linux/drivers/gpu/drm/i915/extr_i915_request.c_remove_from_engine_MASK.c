#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  lock; } ;
struct intel_engine_cs {TYPE_2__ active; } ;
struct TYPE_3__ {int /*<<< orphan*/  link; } ;
struct i915_request {TYPE_1__ sched; int /*<<< orphan*/  engine; } ;

/* Variables and functions */
 struct intel_engine_cs* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static void FUNC5(struct i915_request *rq)
{
	struct intel_engine_cs *engine, *locked;

	/*
	 * Virtual engines complicate acquiring the engine timeline lock,
	 * as their rq->engine pointer is not stable until under that
	 * engine lock. The simple ploy we use is to take the lock then
	 * check that the rq still belongs to the newly locked engine.
	 */
	locked = FUNC0(rq->engine);
	FUNC2(&locked->active.lock);
	while (FUNC4(locked != (engine = FUNC0(rq->engine)))) {
		FUNC3(&locked->active.lock);
		FUNC2(&engine->active.lock);
		locked = engine;
	}
	FUNC1(&rq->sched.link);
	FUNC3(&locked->active.lock);
}