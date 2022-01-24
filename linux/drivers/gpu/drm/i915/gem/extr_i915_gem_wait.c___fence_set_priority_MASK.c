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
struct intel_engine_cs {int /*<<< orphan*/  (* schedule ) (struct i915_request*,struct i915_sched_attr const*) ;} ;
struct i915_sched_attr {int dummy; } ;
struct i915_request {struct intel_engine_cs* engine; } ;
struct dma_fence {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dma_fence*) ; 
 scalar_t__ FUNC1 (struct dma_fence*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct i915_request*,struct i915_sched_attr const*) ; 
 struct i915_request* FUNC7 (struct dma_fence*) ; 

__attribute__((used)) static void FUNC8(struct dma_fence *fence,
				 const struct i915_sched_attr *attr)
{
	struct i915_request *rq;
	struct intel_engine_cs *engine;

	if (FUNC1(fence) || !FUNC0(fence))
		return;

	rq = FUNC7(fence);
	engine = rq->engine;

	FUNC2();
	FUNC4(); /* RCU serialisation for set-wedged protection */
	if (engine->schedule)
		engine->schedule(rq, attr);
	FUNC5();
	FUNC3(); /* kick the tasklets if queues were reprioritised */
}