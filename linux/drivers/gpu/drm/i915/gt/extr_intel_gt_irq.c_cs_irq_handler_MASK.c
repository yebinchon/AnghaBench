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
typedef  int u32 ;
struct TYPE_2__ {int /*<<< orphan*/  tasklet; } ;
struct intel_engine_cs {TYPE_1__ execlists; } ;

/* Variables and functions */
 int GT_CONTEXT_SWITCH_INTERRUPT ; 
 int GT_RENDER_USER_INTERRUPT ; 
 int /*<<< orphan*/  FUNC0 (struct intel_engine_cs*) ; 
 int FUNC1 (struct intel_engine_cs*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(struct intel_engine_cs *engine, u32 iir)
{
	bool tasklet = false;

	if (iir & GT_CONTEXT_SWITCH_INTERRUPT)
		tasklet = true;

	if (iir & GT_RENDER_USER_INTERRUPT) {
		FUNC0(engine);
		tasklet |= FUNC1(engine);
	}

	if (tasklet)
		FUNC2(&engine->execlists.tasklet);
}