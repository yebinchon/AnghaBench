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
struct gpio_desc {int dummy; } ;
struct gpio_chip {int dummy; } ;
struct aspeed_gpio_bank {int dummy; } ;
struct TYPE_2__ {int ngpio; } ;
struct aspeed_gpio {scalar_t__* cf_copro_bankmap; int /*<<< orphan*/  lock; TYPE_1__ chip; } ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 int ENXIO ; 
 int /*<<< orphan*/  GPIO_CMDSRC_ARM ; 
 int /*<<< orphan*/  FUNC0 (struct aspeed_gpio*,struct aspeed_gpio_bank const*,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct gpio_desc*) ; 
 struct aspeed_gpio* FUNC2 (struct gpio_chip*) ; 
 struct gpio_chip* FUNC3 (struct gpio_desc*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 struct aspeed_gpio_bank* FUNC6 (int) ; 

int FUNC7(struct gpio_desc *desc)
{
	struct gpio_chip *chip = FUNC3(desc);
	struct aspeed_gpio *gpio = FUNC2(chip);
	int rc = 0, bindex, offset = FUNC1(desc);
	const struct aspeed_gpio_bank *bank = FUNC6(offset);
	unsigned long flags;

	if (!gpio->cf_copro_bankmap)
		return -ENXIO;

	if (offset < 0 || offset > gpio->chip.ngpio)
		return -EINVAL;
	bindex = offset >> 3;

	FUNC4(&gpio->lock, flags);

	/* Sanity check, this shouldn't happen */
	if (gpio->cf_copro_bankmap[bindex] == 0) {
		rc = -EIO;
		goto bail;
	}
	gpio->cf_copro_bankmap[bindex]--;

	/* Switch command source */
	if (gpio->cf_copro_bankmap[bindex] == 0)
		FUNC0(gpio, bank, bindex,
					      GPIO_CMDSRC_ARM);
 bail:
	FUNC5(&gpio->lock, flags);
	return rc;
}