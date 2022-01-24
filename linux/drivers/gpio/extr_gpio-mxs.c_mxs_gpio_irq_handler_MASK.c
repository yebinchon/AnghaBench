#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct mxs_gpio_port {int both_edges; int /*<<< orphan*/  domain; scalar_t__ base; } ;
struct TYPE_4__ {TYPE_1__* chip; } ;
struct irq_desc {TYPE_2__ irq_data; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* irq_ack ) (TYPE_2__*) ;} ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct mxs_gpio_port*) ; 
 scalar_t__ FUNC1 (struct mxs_gpio_port*) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct mxs_gpio_port* FUNC4 (struct irq_desc*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct mxs_gpio_port*,int) ; 
 int FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC9(struct irq_desc *desc)
{
	u32 irq_stat;
	struct mxs_gpio_port *port = FUNC4(desc);

	desc->irq_data.chip->irq_ack(&desc->irq_data);

	irq_stat = FUNC7(port->base + FUNC1(port)) &
			FUNC7(port->base + FUNC0(port));

	while (irq_stat != 0) {
		int irqoffset = FUNC2(irq_stat) - 1;
		if (port->both_edges & (1 << irqoffset))
			FUNC6(port, irqoffset);

		FUNC3(FUNC5(port->domain, irqoffset));
		irq_stat &= ~(1 << irqoffset);
	}
}