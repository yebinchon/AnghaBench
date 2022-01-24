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
struct TYPE_2__ {scalar_t__ enabled; int /*<<< orphan*/  lock; scalar_t__ active; int /*<<< orphan*/  total; } ;
struct intel_engine_cs {TYPE_1__ stats; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct intel_engine_cs*) ; 
 int /*<<< orphan*/  FUNC2 (struct intel_engine_cs*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC5(struct intel_engine_cs *engine)
{
	unsigned long flags;

	if (!FUNC2(engine))
		return;

	FUNC3(&engine->stats.lock, flags);
	FUNC0(engine->stats.enabled == 0);
	if (--engine->stats.enabled == 0) {
		engine->stats.total = FUNC1(engine);
		engine->stats.active = 0;
	}
	FUNC4(&engine->stats.lock, flags);
}