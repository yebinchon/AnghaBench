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
struct intel_engine_cs {TYPE_1__* gt; int /*<<< orphan*/  (* irq_disable ) (struct intel_engine_cs*) ;} ;
struct TYPE_2__ {int /*<<< orphan*/  irq_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct intel_engine_cs*) ; 

__attribute__((used)) static void FUNC3(struct intel_engine_cs *engine)
{
	if (!engine->irq_disable)
		return;

	/* Caller disables interrupts */
	FUNC0(&engine->gt->irq_lock);
	engine->irq_disable(engine);
	FUNC1(&engine->gt->irq_lock);
}