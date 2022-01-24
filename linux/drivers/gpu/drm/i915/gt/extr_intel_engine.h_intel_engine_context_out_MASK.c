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
struct TYPE_2__ {scalar_t__ enabled; scalar_t__ active; int /*<<< orphan*/  lock; void* total; int /*<<< orphan*/  enabled_at; int /*<<< orphan*/  start; } ;
struct intel_engine_cs {TYPE_1__ stats; } ;
typedef  int /*<<< orphan*/  ktime_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 void* FUNC1 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static inline void FUNC6(struct intel_engine_cs *engine)
{
	unsigned long flags;

	if (FUNC0(engine->stats.enabled) == 0)
		return;

	FUNC4(&engine->stats.lock, flags);

	if (engine->stats.enabled > 0) {
		ktime_t last;

		if (engine->stats.active && --engine->stats.active == 0) {
			/*
			 * Decrement the active context count and in case GPU
			 * is now idle add up to the running total.
			 */
			last = FUNC3(FUNC2(), engine->stats.start);

			engine->stats.total = FUNC1(engine->stats.total,
							last);
		} else if (engine->stats.active == 0) {
			/*
			 * After turning on engine stats, context out might be
			 * the first event in which case we account from the
			 * time stats gathering was turned on.
			 */
			last = FUNC3(FUNC2(), engine->stats.enabled_at);

			engine->stats.total = FUNC1(engine->stats.total,
							last);
		}
	}

	FUNC5(&engine->stats.lock, flags);
}