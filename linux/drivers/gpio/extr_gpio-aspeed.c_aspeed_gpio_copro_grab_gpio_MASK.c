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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct gpio_desc {int dummy; } ;
struct gpio_chip {int dummy; } ;
struct aspeed_gpio_bank {int /*<<< orphan*/  rdata_reg; int /*<<< orphan*/  val_regs; } ;
struct TYPE_2__ {int ngpio; } ;
struct aspeed_gpio {int* cf_copro_bankmap; int /*<<< orphan*/  lock; TYPE_1__ chip; } ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIO_CMDSRC_COLDFIRE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct aspeed_gpio*,struct aspeed_gpio_bank const*,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct gpio_desc*) ; 
 struct aspeed_gpio* FUNC3 (struct gpio_chip*) ; 
 struct gpio_chip* FUNC4 (struct gpio_desc*) ; 
 int* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 struct aspeed_gpio_bank* FUNC8 (int) ; 

int FUNC9(struct gpio_desc *desc,
				u16 *vreg_offset, u16 *dreg_offset, u8 *bit)
{
	struct gpio_chip *chip = FUNC4(desc);
	struct aspeed_gpio *gpio = FUNC3(chip);
	int rc = 0, bindex, offset = FUNC2(desc);
	const struct aspeed_gpio_bank *bank = FUNC8(offset);
	unsigned long flags;

	if (!gpio->cf_copro_bankmap)
		gpio->cf_copro_bankmap = FUNC5(gpio->chip.ngpio >> 3, GFP_KERNEL);
	if (!gpio->cf_copro_bankmap)
		return -ENOMEM;
	if (offset < 0 || offset > gpio->chip.ngpio)
		return -EINVAL;
	bindex = offset >> 3;

	FUNC6(&gpio->lock, flags);

	/* Sanity check, this shouldn't happen */
	if (gpio->cf_copro_bankmap[bindex] == 0xff) {
		rc = -EIO;
		goto bail;
	}
	gpio->cf_copro_bankmap[bindex]++;

	/* Switch command source */
	if (gpio->cf_copro_bankmap[bindex] == 1)
		FUNC1(gpio, bank, bindex,
					      GPIO_CMDSRC_COLDFIRE);

	if (vreg_offset)
		*vreg_offset = bank->val_regs;
	if (dreg_offset)
		*dreg_offset = bank->rdata_reg;
	if (bit)
		*bit = FUNC0(offset);
 bail:
	FUNC7(&gpio->lock, flags);
	return rc;
}