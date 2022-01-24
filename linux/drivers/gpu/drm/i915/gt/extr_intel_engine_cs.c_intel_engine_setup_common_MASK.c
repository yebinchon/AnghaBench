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
struct intel_engine_cs {int /*<<< orphan*/  i915; int /*<<< orphan*/  sseu; int /*<<< orphan*/  pool; int /*<<< orphan*/  barrier_tasks; } ;
struct TYPE_2__ {int /*<<< orphan*/  sseu; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENGINE_PHYSICAL ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct intel_engine_cs*) ; 
 int /*<<< orphan*/  FUNC3 (struct intel_engine_cs*) ; 
 int /*<<< orphan*/  FUNC4 (struct intel_engine_cs*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct intel_engine_cs*) ; 
 int /*<<< orphan*/  FUNC6 (struct intel_engine_cs*) ; 
 int /*<<< orphan*/  FUNC7 (struct intel_engine_cs*) ; 
 int /*<<< orphan*/  FUNC8 (struct intel_engine_cs*) ; 
 int /*<<< orphan*/  FUNC9 (struct intel_engine_cs*) ; 
 int /*<<< orphan*/  FUNC10 (struct intel_engine_cs*) ; 
 int /*<<< orphan*/  FUNC11 (struct intel_engine_cs*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC14(struct intel_engine_cs *engine)
{
	int err;

	FUNC1(&engine->barrier_tasks);

	err = FUNC2(engine);
	if (err)
		return err;

	FUNC4(engine, ENGINE_PHYSICAL);
	FUNC5(engine);
	FUNC8(engine);
	FUNC9(engine);
	FUNC6(engine);
	FUNC3(engine);

	FUNC12(&engine->pool);

	/* Use the whole device by default */
	engine->sseu =
		FUNC13(&FUNC0(engine->i915)->sseu);

	FUNC11(engine);
	FUNC10(engine);
	FUNC7(engine);

	return 0;
}