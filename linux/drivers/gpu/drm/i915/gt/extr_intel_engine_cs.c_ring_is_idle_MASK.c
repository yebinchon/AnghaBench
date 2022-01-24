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
struct intel_engine_cs {int /*<<< orphan*/  i915; int /*<<< orphan*/  mmio_base; } ;

/* Variables and functions */
 int FUNC0 (struct intel_engine_cs*,int /*<<< orphan*/ ) ; 
 int HEAD_ADDR ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int MODE_IDLE ; 
 int /*<<< orphan*/  RING_HEAD ; 
 int /*<<< orphan*/  RING_MI_MODE ; 
 int /*<<< orphan*/  RING_TAIL ; 
 int TAIL_ADDR ; 
 int /*<<< orphan*/  FUNC3 (struct intel_engine_cs*) ; 
 int /*<<< orphan*/  FUNC4 (struct intel_engine_cs*) ; 

__attribute__((used)) static bool FUNC5(struct intel_engine_cs *engine)
{
	bool idle = true;

	if (FUNC1(!engine->mmio_base))
		return true;

	if (!FUNC3(engine))
		return true;

	/* First check that no commands are left in the ring */
	if ((FUNC0(engine, RING_HEAD) & HEAD_ADDR) !=
	    (FUNC0(engine, RING_TAIL) & TAIL_ADDR))
		idle = false;

	/* No bit for gen2, so assume the CS parser is idle */
	if (FUNC2(engine->i915) > 2 &&
	    !(FUNC0(engine, RING_MI_MODE) & MODE_IDLE))
		idle = false;

	FUNC4(engine);

	return idle;
}