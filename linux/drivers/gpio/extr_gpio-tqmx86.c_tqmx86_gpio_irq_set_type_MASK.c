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
 int EINVAL ; 
 unsigned int IRQF_TRIGGER_MASK ; 
#define  IRQ_TYPE_EDGE_BOTH 130 
#define  IRQ_TYPE_EDGE_FALLING 129 
#define  IRQ_TYPE_EDGE_RISING 128 
 int /*<<< orphan*/  TQMX86_GPIIC ; 
 unsigned int TQMX86_GPII_BITS ; 
 unsigned int TQMX86_GPII_FALLING ; 
 unsigned int TQMX86_GPII_MASK ; 
 unsigned int TQMX86_GPII_RISING ; 
 unsigned int TQMX86_NGPO ; 
 struct tqmx86_gpio_data* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 unsigned int FUNC4 (struct tqmx86_gpio_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct tqmx86_gpio_data*,unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct irq_data *data, unsigned int type)
{
	struct tqmx86_gpio_data *gpio = FUNC0(
		FUNC1(data));
	unsigned int offset = (data->hwirq - TQMX86_NGPO);
	unsigned int edge_type = type & IRQF_TRIGGER_MASK;
	unsigned long flags;
	u8 new_type, gpiic;

	switch (edge_type) {
	case IRQ_TYPE_EDGE_RISING:
		new_type = TQMX86_GPII_RISING;
		break;
	case IRQ_TYPE_EDGE_FALLING:
		new_type = TQMX86_GPII_FALLING;
		break;
	case IRQ_TYPE_EDGE_BOTH:
		new_type = TQMX86_GPII_FALLING | TQMX86_GPII_RISING;
		break;
	default:
		return -EINVAL; /* not supported */
	}

	gpio->irq_type[offset] = new_type;

	FUNC2(&gpio->spinlock, flags);
	gpiic = FUNC4(gpio, TQMX86_GPIIC);
	gpiic &= ~((TQMX86_GPII_MASK) << (offset * TQMX86_GPII_BITS));
	gpiic |= new_type << (offset * TQMX86_GPII_BITS);
	FUNC5(gpio, gpiic, TQMX86_GPIIC);
	FUNC3(&gpio->spinlock, flags);

	return 0;
}