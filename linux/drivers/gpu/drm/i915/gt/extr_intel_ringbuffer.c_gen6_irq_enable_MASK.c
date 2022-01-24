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
struct intel_engine_cs {int irq_enable_mask; int irq_keep_mask; int /*<<< orphan*/  gt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct intel_engine_cs*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct intel_engine_cs*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  RING_IMR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC3(struct intel_engine_cs *engine)
{
	FUNC1(engine, RING_IMR,
		     ~(engine->irq_enable_mask | engine->irq_keep_mask));

	/* Flush/delay to ensure the RING_IMR is active before the GT IMR */
	FUNC0(engine, RING_IMR);

	FUNC2(engine->gt, engine->irq_enable_mask);
}