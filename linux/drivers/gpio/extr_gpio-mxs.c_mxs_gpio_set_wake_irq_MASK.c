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
struct mxs_gpio_port {int /*<<< orphan*/  irq; } ;
struct irq_data {int dummy; } ;
struct irq_chip_generic {struct mxs_gpio_port* private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct irq_chip_generic* FUNC2 (struct irq_data*) ; 

__attribute__((used)) static int FUNC3(struct irq_data *d, unsigned int enable)
{
	struct irq_chip_generic *gc = FUNC2(d);
	struct mxs_gpio_port *port = gc->private;

	if (enable)
		FUNC1(port->irq);
	else
		FUNC0(port->irq);

	return 0;
}