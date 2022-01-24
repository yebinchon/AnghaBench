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
struct TYPE_2__ {int /*<<< orphan*/  start; scalar_t__ active; int /*<<< orphan*/  total; } ;
struct intel_engine_cs {TYPE_1__ stats; } ;
typedef  int /*<<< orphan*/  ktime_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ktime_t FUNC3(struct intel_engine_cs *engine)
{
	ktime_t total = engine->stats.total;

	/*
	 * If the engine is executing something at the moment
	 * add it to the total.
	 */
	if (engine->stats.active)
		total = FUNC0(total,
				  FUNC2(FUNC1(), engine->stats.start));

	return total;
}