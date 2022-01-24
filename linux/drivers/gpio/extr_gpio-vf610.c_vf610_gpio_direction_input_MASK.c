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
typedef  unsigned long u32 ;
struct vf610_gpio_port {scalar_t__ gpio_base; TYPE_1__* sdata; } ;
struct gpio_chip {unsigned int base; } ;
struct TYPE_2__ {scalar_t__ have_paddr; } ;

/* Variables and functions */
 unsigned long FUNC0 (unsigned int) ; 
 scalar_t__ GPIO_PDDR ; 
 struct vf610_gpio_port* FUNC1 (struct gpio_chip*) ; 
 int FUNC2 (unsigned int) ; 
 unsigned long FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long,scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct gpio_chip *chip, unsigned gpio)
{
	struct vf610_gpio_port *port = FUNC1(chip);
	unsigned long mask = FUNC0(gpio);
	u32 val;

	if (port->sdata && port->sdata->have_paddr) {
		val = FUNC3(port->gpio_base + GPIO_PDDR);
		val &= ~mask;
		FUNC4(val, port->gpio_base + GPIO_PDDR);
	}

	return FUNC2(chip->base + gpio);
}