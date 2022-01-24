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
struct gpio_chip {int dummy; } ;
struct dwapb_gpio_port {struct dwapb_gpio* gpio; } ;
struct dwapb_gpio {int /*<<< orphan*/  domain; } ;

/* Variables and functions */
 struct dwapb_gpio_port* FUNC0 (struct gpio_chip*) ; 
 int FUNC1 (int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static int FUNC2(struct gpio_chip *gc, unsigned offset)
{
	struct dwapb_gpio_port *port = FUNC0(gc);
	struct dwapb_gpio *gpio = port->gpio;

	return FUNC1(gpio->domain, offset);
}