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
struct gpio {int dummy; } ;
typedef  enum gpio_id { ____Placeholder_gpio_id } gpio_id ;
typedef  enum dc_irq_source { ____Placeholder_dc_irq_source } dc_irq_source ;

/* Variables and functions */
 scalar_t__ DC_IRQ_SOURCE_GPIOPAD0 ; 
 scalar_t__ DC_IRQ_SOURCE_HPD1 ; 
 int DC_IRQ_SOURCE_INVALID ; 
#define  GPIO_ID_GPIO_PAD 129 
#define  GPIO_ID_HPD 128 
 scalar_t__ FUNC0 (struct gpio const*) ; 
 int FUNC1 (struct gpio const*) ; 

enum dc_irq_source FUNC2(
	const struct gpio *irq)
{
	enum gpio_id id = FUNC1(irq);

	switch (id) {
	case GPIO_ID_HPD:
		return (enum dc_irq_source)(DC_IRQ_SOURCE_HPD1 +
			FUNC0(irq));
	case GPIO_ID_GPIO_PAD:
		return (enum dc_irq_source)(DC_IRQ_SOURCE_GPIOPAD0 +
			FUNC0(irq));
	default:
		return DC_IRQ_SOURCE_INVALID;
	}
}