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
struct gpio_chip {int /*<<< orphan*/  bgpio_lock; } ;
struct dwapb_gpio_port {struct dwapb_gpio* gpio; } ;
struct dwapb_gpio {int dummy; } ;

/* Variables and functions */
 unsigned long FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  GPIO_PORTA_DEBOUNCE ; 
 unsigned long FUNC1 (struct dwapb_gpio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dwapb_gpio*,int /*<<< orphan*/ ,unsigned long) ; 
 struct dwapb_gpio_port* FUNC3 (struct gpio_chip*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC6(struct gpio_chip *gc,
				   unsigned offset, unsigned debounce)
{
	struct dwapb_gpio_port *port = FUNC3(gc);
	struct dwapb_gpio *gpio = port->gpio;
	unsigned long flags, val_deb;
	unsigned long mask = FUNC0(offset);

	FUNC4(&gc->bgpio_lock, flags);

	val_deb = FUNC1(gpio, GPIO_PORTA_DEBOUNCE);
	if (debounce)
		FUNC2(gpio, GPIO_PORTA_DEBOUNCE, val_deb | mask);
	else
		FUNC2(gpio, GPIO_PORTA_DEBOUNCE, val_deb & ~mask);

	FUNC5(&gc->bgpio_lock, flags);

	return 0;
}