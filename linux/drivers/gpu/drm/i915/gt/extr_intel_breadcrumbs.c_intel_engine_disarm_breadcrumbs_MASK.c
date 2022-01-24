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
struct intel_breadcrumbs {int /*<<< orphan*/  irq_lock; scalar_t__ irq_armed; } ;
struct intel_engine_cs {struct intel_breadcrumbs breadcrumbs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct intel_breadcrumbs*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC3(struct intel_engine_cs *engine)
{
	struct intel_breadcrumbs *b = &engine->breadcrumbs;
	unsigned long flags;

	if (!b->irq_armed)
		return;

	FUNC1(&b->irq_lock, flags);
	if (b->irq_armed)
		FUNC0(b);
	FUNC2(&b->irq_lock, flags);
}