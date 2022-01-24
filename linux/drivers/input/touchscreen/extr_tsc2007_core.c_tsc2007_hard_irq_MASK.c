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
struct tsc2007 {int /*<<< orphan*/  (* clear_penirq ) () ;} ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_WAKE_THREAD ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (struct tsc2007*) ; 

__attribute__((used)) static irqreturn_t FUNC2(int irq, void *handle)
{
	struct tsc2007 *ts = handle;

	if (FUNC1(ts))
		return IRQ_WAKE_THREAD;

	if (ts->clear_penirq)
		ts->clear_penirq();

	return IRQ_HANDLED;
}