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
struct mxs_gpio_port {scalar_t__ base; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct mxs_gpio_port*) ; 
 struct mxs_gpio_port* FUNC1 (struct gpio_chip*) ; 
 int FUNC2 (scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct gpio_chip *gc, unsigned offset)
{
	struct mxs_gpio_port *port = FUNC1(gc);
	u32 mask = 1 << offset;
	u32 dir;

	dir = FUNC2(port->base + FUNC0(port));
	return !(dir & mask);
}