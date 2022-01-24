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
struct syscon_gpio_priv {unsigned int dreg_offset; int /*<<< orphan*/  syscon; TYPE_1__* data; } ;
struct gpio_chip {int /*<<< orphan*/  parent; } ;
struct TYPE_2__ {unsigned int dat_bit_offset; } ;

/* Variables and functions */
 int FUNC0 (unsigned int) ; 
 int KEYSTONE_LOCK_BIT ; 
 unsigned int SYSCON_REG_BITS ; 
 unsigned int SYSCON_REG_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 struct syscon_gpio_priv* FUNC2 (struct gpio_chip*) ; 
 int FUNC3 (int /*<<< orphan*/ ,unsigned int,int,int) ; 

__attribute__((used)) static void FUNC4(struct gpio_chip *chip, unsigned offset, int val)
{
	struct syscon_gpio_priv *priv = FUNC2(chip);
	unsigned int offs;
	int ret;

	offs = priv->dreg_offset + priv->data->dat_bit_offset + offset;

	if (!val)
		return;

	ret = FUNC3(
			priv->syscon,
			(offs / SYSCON_REG_BITS) * SYSCON_REG_SIZE,
			FUNC0(offs % SYSCON_REG_BITS) | KEYSTONE_LOCK_BIT,
			FUNC0(offs % SYSCON_REG_BITS) | KEYSTONE_LOCK_BIT);
	if (ret < 0)
		FUNC1(chip->parent, "gpio write failed ret(%d)\n", ret);
}