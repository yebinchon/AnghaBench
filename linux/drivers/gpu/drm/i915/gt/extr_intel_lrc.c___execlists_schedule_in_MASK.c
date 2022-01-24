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
struct intel_engine_cs {int /*<<< orphan*/  gt; } ;
struct intel_context {int dummy; } ;
struct i915_request {struct intel_context* hw_context; struct intel_engine_cs* engine; } ;

/* Variables and functions */
 int /*<<< orphan*/  INTEL_CONTEXT_SCHEDULE_IN ; 
 int /*<<< orphan*/  FUNC0 (struct i915_request*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct intel_context* const) ; 
 int /*<<< orphan*/  FUNC2 (struct intel_engine_cs* const) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline struct intel_engine_cs *
FUNC4(struct i915_request *rq)
{
	struct intel_engine_cs * const engine = rq->engine;
	struct intel_context * const ce = rq->hw_context;

	FUNC1(ce);

	FUNC3(engine->gt);
	FUNC0(rq, INTEL_CONTEXT_SCHEDULE_IN);
	FUNC2(engine);

	return engine;
}