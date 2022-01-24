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
typedef  unsigned int u32 ;
struct tegra_gpio_info {int /*<<< orphan*/  dev; int /*<<< orphan*/  gc; } ;
struct tegra_gpio_bank {int /*<<< orphan*/ * lvl_lock; struct tegra_gpio_info* tgi; } ;
struct irq_data {unsigned int hwirq; } ;

/* Variables and functions */
 int EINVAL ; 
 unsigned int FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct tegra_gpio_info*,unsigned int) ; 
 unsigned int GPIO_INT_LVL_EDGE_BOTH ; 
 unsigned int GPIO_INT_LVL_EDGE_FALLING ; 
 unsigned int GPIO_INT_LVL_EDGE_RISING ; 
 unsigned int GPIO_INT_LVL_LEVEL_HIGH ; 
 unsigned int GPIO_INT_LVL_LEVEL_LOW ; 
 unsigned int GPIO_INT_LVL_MASK ; 
 int /*<<< orphan*/  FUNC2 (struct tegra_gpio_info*,unsigned int) ; 
 unsigned int FUNC3 (unsigned int) ; 
#define  IRQ_TYPE_EDGE_BOTH 132 
#define  IRQ_TYPE_EDGE_FALLING 131 
#define  IRQ_TYPE_EDGE_RISING 130 
#define  IRQ_TYPE_LEVEL_HIGH 129 
#define  IRQ_TYPE_LEVEL_LOW 128 
 unsigned int IRQ_TYPE_SENSE_MASK ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 int FUNC5 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  handle_edge_irq ; 
 int /*<<< orphan*/  handle_level_irq ; 
 struct tegra_gpio_bank* FUNC6 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC7 (struct irq_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (struct tegra_gpio_info*,unsigned int) ; 
 int /*<<< orphan*/  FUNC11 (struct tegra_gpio_info*,unsigned int) ; 
 int /*<<< orphan*/  FUNC12 (struct tegra_gpio_info*,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC13 (struct tegra_gpio_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct tegra_gpio_info*,unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC15(struct irq_data *d, unsigned int type)
{
	unsigned int gpio = d->hwirq, port = FUNC3(gpio), lvl_type;
	struct tegra_gpio_bank *bank = FUNC6(d);
	struct tegra_gpio_info *tgi = bank->tgi;
	unsigned long flags;
	u32 val;
	int ret;

	switch (type & IRQ_TYPE_SENSE_MASK) {
	case IRQ_TYPE_EDGE_RISING:
		lvl_type = GPIO_INT_LVL_EDGE_RISING;
		break;

	case IRQ_TYPE_EDGE_FALLING:
		lvl_type = GPIO_INT_LVL_EDGE_FALLING;
		break;

	case IRQ_TYPE_EDGE_BOTH:
		lvl_type = GPIO_INT_LVL_EDGE_BOTH;
		break;

	case IRQ_TYPE_LEVEL_HIGH:
		lvl_type = GPIO_INT_LVL_LEVEL_HIGH;
		break;

	case IRQ_TYPE_LEVEL_LOW:
		lvl_type = GPIO_INT_LVL_LEVEL_LOW;
		break;

	default:
		return -EINVAL;
	}

	FUNC8(&bank->lvl_lock[port], flags);

	val = FUNC13(tgi, FUNC1(tgi, gpio));
	val &= ~(GPIO_INT_LVL_MASK << FUNC0(gpio));
	val |= lvl_type << FUNC0(gpio);
	FUNC14(tgi, val, FUNC1(tgi, gpio));

	FUNC9(&bank->lvl_lock[port], flags);

	FUNC12(tgi, FUNC2(tgi, gpio), gpio, 0);
	FUNC11(tgi, gpio);

	ret = FUNC5(&tgi->gc, gpio);
	if (ret) {
		FUNC4(tgi->dev,
			"unable to lock Tegra GPIO %u as IRQ\n", gpio);
		FUNC10(tgi, gpio);
		return ret;
	}

	if (type & (IRQ_TYPE_LEVEL_LOW | IRQ_TYPE_LEVEL_HIGH))
		FUNC7(d, handle_level_irq);
	else if (type & (IRQ_TYPE_EDGE_FALLING | IRQ_TYPE_EDGE_RISING))
		FUNC7(d, handle_edge_irq);

	return 0;
}