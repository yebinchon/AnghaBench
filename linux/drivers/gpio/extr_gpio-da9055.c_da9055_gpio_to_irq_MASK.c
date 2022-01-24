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
typedef  scalar_t__ u32 ;
struct gpio_chip {int dummy; } ;
struct da9055_gpio {struct da9055* da9055; } ;
struct da9055 {int /*<<< orphan*/  irq_data; } ;

/* Variables and functions */
 scalar_t__ DA9055_IRQ_GPI0 ; 
 struct da9055_gpio* FUNC0 (struct gpio_chip*) ; 
 int FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC2(struct gpio_chip *gc, u32 offset)
{
	struct da9055_gpio *gpio = FUNC0(gc);
	struct da9055 *da9055 = gpio->da9055;

	return FUNC1(da9055->irq_data,
				  DA9055_IRQ_GPI0 + offset);
}