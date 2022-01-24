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
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/ * IXP4XX_OSST ; 
 int /*<<< orphan*/  IXP4XX_OSST_TIMER_2_PEND ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int) ; 

__attribute__((used)) static irqreturn_t FUNC2(int irq, void *dev_id)
{
	unsigned int pin = (unsigned int) dev_id;

	/* clear interrupt */
	*IXP4XX_OSST = IXP4XX_OSST_TIMER_2_PEND;

	/* flip the beeper output */
	FUNC1(pin, !FUNC0(pin));

	return IRQ_HANDLED;
}