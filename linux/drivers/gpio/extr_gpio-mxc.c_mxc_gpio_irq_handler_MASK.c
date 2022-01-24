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
typedef  int u32 ;
struct mxc_gpio_port {int both_edges; int /*<<< orphan*/  domain; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mxc_gpio_port*,int) ; 

__attribute__((used)) static void FUNC4(struct mxc_gpio_port *port, u32 irq_stat)
{
	while (irq_stat != 0) {
		int irqoffset = FUNC0(irq_stat) - 1;

		if (port->both_edges & (1 << irqoffset))
			FUNC3(port, irqoffset);

		FUNC1(FUNC2(port->domain, irqoffset));

		irq_stat &= ~(1 << irqoffset);
	}
}