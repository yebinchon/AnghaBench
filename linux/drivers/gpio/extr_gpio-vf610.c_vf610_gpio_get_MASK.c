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
struct vf610_gpio_port {scalar_t__ gpio_base; TYPE_1__* sdata; } ;
struct gpio_chip {int dummy; } ;
struct TYPE_2__ {scalar_t__ have_paddr; } ;

/* Variables and functions */
 unsigned long FUNC0 (unsigned int) ; 
 scalar_t__ GPIO_PDDR ; 
 unsigned long GPIO_PDIR ; 
 unsigned long GPIO_PDOR ; 
 struct vf610_gpio_port* FUNC1 (struct gpio_chip*) ; 
 unsigned long FUNC2 (scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct gpio_chip *gc, unsigned int gpio)
{
	struct vf610_gpio_port *port = FUNC1(gc);
	unsigned long mask = FUNC0(gpio);
	unsigned long offset = GPIO_PDIR;

	if (port->sdata && port->sdata->have_paddr) {
		mask &= FUNC2(port->gpio_base + GPIO_PDDR);
		if (mask)
			offset = GPIO_PDOR;
	}

	return !!(FUNC2(port->gpio_base + offset) & FUNC0(gpio));
}