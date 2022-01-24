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
struct apbps2_priv {int /*<<< orphan*/  io; TYPE_1__* regs; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {int /*<<< orphan*/  status; int /*<<< orphan*/  data; } ;

/* Variables and functions */
 unsigned long APBPS2_STATUS_DR ; 
 unsigned long APBPS2_STATUS_FE ; 
 unsigned long APBPS2_STATUS_PE ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 unsigned long SERIO_FRAME ; 
 unsigned long SERIO_PARITY ; 
 unsigned long FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned long,unsigned long) ; 

__attribute__((used)) static irqreturn_t FUNC3(int irq, void *dev_id)
{
	struct apbps2_priv *priv = dev_id;
	unsigned long status, data, rxflags;
	irqreturn_t ret = IRQ_NONE;

	while ((status = FUNC0(&priv->regs->status)) & APBPS2_STATUS_DR) {
		data = FUNC0(&priv->regs->data);
		rxflags = (status & APBPS2_STATUS_PE) ? SERIO_PARITY : 0;
		rxflags |= (status & APBPS2_STATUS_FE) ? SERIO_FRAME : 0;

		/* clear error bits? */
		if (rxflags)
			FUNC1(0, &priv->regs->status);

		FUNC2(priv->io, data, rxflags);

		ret = IRQ_HANDLED;
	}

	return ret;
}