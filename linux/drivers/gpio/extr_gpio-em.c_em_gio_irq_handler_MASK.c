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
struct em_gio_priv {int /*<<< orphan*/  irq_domain; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  GIO_IIR ; 
 int /*<<< orphan*/  GIO_MST ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 unsigned int FUNC1 (unsigned long) ; 
 unsigned long FUNC2 (struct em_gio_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct em_gio_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static irqreturn_t FUNC6(int irq, void *dev_id)
{
	struct em_gio_priv *p = dev_id;
	unsigned long pending;
	unsigned int offset, irqs_handled = 0;

	while ((pending = FUNC2(p, GIO_MST))) {
		offset = FUNC1(pending);
		FUNC3(p, GIO_IIR, FUNC0(offset));
		FUNC4(FUNC5(p->irq_domain, offset));
		irqs_handled++;
	}

	return irqs_handled ? IRQ_HANDLED : IRQ_NONE;
}