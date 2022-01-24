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
typedef  int /*<<< orphan*/  u16 ;
struct zx_gpio {int /*<<< orphan*/  lock; scalar_t__ base; } ;
struct irq_data {int dummy; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EINVAL ; 
 unsigned int IRQ_TYPE_EDGE_BOTH ; 
 unsigned int IRQ_TYPE_EDGE_FALLING ; 
 unsigned int IRQ_TYPE_EDGE_RISING ; 
 unsigned int IRQ_TYPE_LEVEL_HIGH ; 
 unsigned int IRQ_TYPE_LEVEL_LOW ; 
 scalar_t__ ZX_GPIO_IEN ; 
 scalar_t__ ZX_GPIO_IEP ; 
 scalar_t__ ZX_GPIO_IV ; 
 scalar_t__ ZX_GPIO_IVE ; 
 int ZX_GPIO_NR ; 
 struct zx_gpio* FUNC1 (struct gpio_chip*) ; 
 struct gpio_chip* FUNC2 (struct irq_data*) ; 
 int FUNC3 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC8(struct irq_data *d, unsigned trigger)
{
	struct gpio_chip *gc = FUNC2(d);
	struct zx_gpio *chip = FUNC1(gc);
	int offset = FUNC3(d);
	unsigned long flags;
	u16 gpiois, gpioi_epos, gpioi_eneg, gpioiev;
	u16 bit = FUNC0(offset);

	if (offset < 0 || offset >= ZX_GPIO_NR)
		return -EINVAL;

	FUNC4(&chip->lock, flags);

	gpioiev = FUNC6(chip->base + ZX_GPIO_IV);
	gpiois = FUNC6(chip->base + ZX_GPIO_IVE);
	gpioi_epos = FUNC6(chip->base + ZX_GPIO_IEP);
	gpioi_eneg = FUNC6(chip->base + ZX_GPIO_IEN);

	if (trigger & (IRQ_TYPE_LEVEL_HIGH | IRQ_TYPE_LEVEL_LOW)) {
		gpiois |= bit;
		if (trigger & IRQ_TYPE_LEVEL_HIGH)
			gpioiev |= bit;
		else
			gpioiev &= ~bit;
	} else
		gpiois &= ~bit;

	if ((trigger & IRQ_TYPE_EDGE_BOTH) == IRQ_TYPE_EDGE_BOTH) {
		gpioi_epos |= bit;
		gpioi_eneg |= bit;
	} else {
		if (trigger & IRQ_TYPE_EDGE_RISING) {
			gpioi_epos |= bit;
			gpioi_eneg &= ~bit;
		} else if (trigger & IRQ_TYPE_EDGE_FALLING) {
			gpioi_eneg |= bit;
			gpioi_epos &= ~bit;
		}
	}

	FUNC7(gpiois, chip->base + ZX_GPIO_IVE);
	FUNC7(gpioi_epos, chip->base + ZX_GPIO_IEP);
	FUNC7(gpioi_eneg, chip->base + ZX_GPIO_IEN);
	FUNC7(gpioiev, chip->base + ZX_GPIO_IV);
	FUNC5(&chip->lock, flags);

	return 0;
}