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
struct TYPE_2__ {int /*<<< orphan*/  requests; } ;
struct intel_engine_cs {int /*<<< orphan*/  whitelist; int /*<<< orphan*/  wa_list; int /*<<< orphan*/  ctx_wa_list; int /*<<< orphan*/  barrier_tasks; int /*<<< orphan*/  kernel_context; scalar_t__ default_state; int /*<<< orphan*/  pool; TYPE_1__ active; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct intel_engine_cs*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct intel_engine_cs*) ; 
 int /*<<< orphan*/  FUNC6 (struct intel_engine_cs*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

void FUNC11(struct intel_engine_cs *engine)
{
	FUNC0(!FUNC9(&engine->active.requests));

	FUNC1(engine);

	FUNC7(&engine->pool);
	FUNC6(engine);
	FUNC5(engine);

	if (engine->default_state)
		FUNC2(engine->default_state);

	FUNC4(engine->kernel_context);
	FUNC3(engine->kernel_context);
	FUNC0(!FUNC10(&engine->barrier_tasks));

	FUNC8(&engine->ctx_wa_list);
	FUNC8(&engine->wa_list);
	FUNC8(&engine->whitelist);
}