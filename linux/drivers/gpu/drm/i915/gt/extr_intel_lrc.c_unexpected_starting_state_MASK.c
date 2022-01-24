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
struct intel_engine_cs {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (struct intel_engine_cs*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RING_MI_MODE ; 
 int STOP_RING ; 

__attribute__((used)) static bool FUNC2(struct intel_engine_cs *engine)
{
	bool unexpected = false;

	if (FUNC1(engine, RING_MI_MODE) & STOP_RING) {
		FUNC0("STOP_RING still set in RING_MI_MODE\n");
		unexpected = true;
	}

	return unexpected;
}