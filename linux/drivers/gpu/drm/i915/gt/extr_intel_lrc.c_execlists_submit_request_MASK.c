#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  lock; } ;
struct TYPE_5__ {int /*<<< orphan*/  rb_root; } ;
struct TYPE_6__ {TYPE_1__ queue; } ;
struct intel_engine_cs {TYPE_3__ active; TYPE_2__ execlists; } ;
struct TYPE_8__ {int /*<<< orphan*/  link; } ;
struct i915_request {TYPE_4__ sched; struct intel_engine_cs* engine; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct intel_engine_cs*,TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct i915_request*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (struct intel_engine_cs*,struct i915_request*) ; 

__attribute__((used)) static void FUNC8(struct i915_request *request)
{
	struct intel_engine_cs *engine = request->engine;
	unsigned long flags;

	/* Will be called from irq-context when using foreign fences. */
	FUNC5(&engine->active.lock, flags);

	FUNC3(engine, &request->sched, FUNC4(request));

	FUNC0(FUNC1(&engine->execlists.queue.rb_root));
	FUNC0(FUNC2(&request->sched.link));

	FUNC7(engine, request);

	FUNC6(&engine->active.lock, flags);
}