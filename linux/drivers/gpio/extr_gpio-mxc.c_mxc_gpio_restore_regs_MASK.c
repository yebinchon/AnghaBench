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
struct TYPE_2__ {int /*<<< orphan*/  dr; int /*<<< orphan*/  edge_sel; int /*<<< orphan*/  gdir; int /*<<< orphan*/  imr; int /*<<< orphan*/  icr2; int /*<<< orphan*/  icr1; } ;
struct mxc_gpio_port {scalar_t__ base; TYPE_1__ gpio_saved_reg; int /*<<< orphan*/  power_off; } ;

/* Variables and functions */
 scalar_t__ GPIO_DR ; 
 scalar_t__ GPIO_EDGE_SEL ; 
 scalar_t__ GPIO_GDIR ; 
 scalar_t__ GPIO_ICR1 ; 
 scalar_t__ GPIO_ICR2 ; 
 scalar_t__ GPIO_IMR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC1(struct mxc_gpio_port *port)
{
	if (!port->power_off)
		return;

	FUNC0(port->gpio_saved_reg.icr1, port->base + GPIO_ICR1);
	FUNC0(port->gpio_saved_reg.icr2, port->base + GPIO_ICR2);
	FUNC0(port->gpio_saved_reg.imr, port->base + GPIO_IMR);
	FUNC0(port->gpio_saved_reg.gdir, port->base + GPIO_GDIR);
	FUNC0(port->gpio_saved_reg.edge_sel, port->base + GPIO_EDGE_SEL);
	FUNC0(port->gpio_saved_reg.dr, port->base + GPIO_DR);
}