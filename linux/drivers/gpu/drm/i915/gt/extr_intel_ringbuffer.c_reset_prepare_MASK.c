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
typedef  int /*<<< orphan*/  u32 ;
struct intel_uncore {int dummy; } ;
struct intel_engine_cs {int /*<<< orphan*/  name; int /*<<< orphan*/  mmio_base; struct intel_uncore* uncore; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const) ; 
 scalar_t__ FUNC4 (struct intel_engine_cs*) ; 
 int /*<<< orphan*/  FUNC5 (struct intel_uncore*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct intel_uncore*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct intel_uncore*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC8(struct intel_engine_cs *engine)
{
	struct intel_uncore *uncore = engine->uncore;
	const u32 base = engine->mmio_base;

	/*
	 * We stop engines, otherwise we might get failed reset and a
	 * dead gpu (on elk). Also as modern gpu as kbl can suffer
	 * from system hang if batchbuffer is progressing when
	 * the reset is issued, regardless of READY_TO_RESET ack.
	 * Thus assume it is best to stop engines on all gens
	 * where we have a gpu reset.
	 *
	 * WaKBLVECSSemaphoreWaitPoll:kbl (on ALL_ENGINES)
	 *
	 * WaMediaResetMainRingCleanup:ctg,elk (presumably)
	 *
	 * FIXME: Wa for more modern gens needs to be validated
	 */
	FUNC0("%s\n", engine->name);

	if (FUNC4(engine))
		FUNC0("%s: timed out on STOP_RING\n", engine->name);

	FUNC7(uncore,
			      FUNC2(base),
			      FUNC6(uncore, FUNC3(base)));
	FUNC5(uncore, FUNC2(base)); /* paranoia */

	FUNC7(uncore, FUNC2(base), 0);
	FUNC7(uncore, FUNC3(base), 0);
	FUNC5(uncore, FUNC3(base));

	/* The ring must be empty before it is disabled */
	FUNC7(uncore, FUNC1(base), 0);

	/* Check acts as a post */
	if (FUNC6(uncore, FUNC2(base)))
		FUNC0("%s: ring head [%x] not parked\n",
			  engine->name,
			  FUNC6(uncore, FUNC2(base)));
}