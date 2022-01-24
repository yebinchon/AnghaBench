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
typedef  unsigned int u8 ;
struct tqmx86_gpio_data {unsigned int* irq_type; int /*<<< orphan*/  spinlock; } ;
struct irq_data {unsigned int hwirq; } ;

/* Variables and functions */
 int /*<<< orphan*/  TQMX86_GPIIC ; 
 unsigned int TQMX86_GPII_BITS ; 
 unsigned int TQMX86_GPII_MASK ; 
 unsigned int TQMX86_NGPO ; 
 struct tqmx86_gpio_data* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 unsigned int FUNC4 (struct tqmx86_gpio_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct tqmx86_gpio_data*,unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct irq_data *data)
{
	unsigned int offset = (data->hwirq - TQMX86_NGPO);
	struct tqmx86_gpio_data *gpio = FUNC0(
		FUNC1(data));
	unsigned long flags;
	u8 gpiic, mask;

	mask = TQMX86_GPII_MASK << (offset * TQMX86_GPII_BITS);

	FUNC2(&gpio->spinlock, flags);
	gpiic = FUNC4(gpio, TQMX86_GPIIC);
	gpiic &= ~mask;
	gpiic |= gpio->irq_type[offset] << (offset * TQMX86_GPII_BITS);
	FUNC5(gpio, gpiic, TQMX86_GPIIC);
	FUNC3(&gpio->spinlock, flags);
}