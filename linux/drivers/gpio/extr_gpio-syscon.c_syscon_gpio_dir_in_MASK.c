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
struct syscon_gpio_priv {unsigned int dir_reg_offset; int /*<<< orphan*/  syscon; TYPE_1__* data; } ;
struct gpio_chip {int dummy; } ;
struct TYPE_2__ {int flags; unsigned int dir_bit_offset; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int GPIO_SYSCON_FEAT_DIR ; 
 unsigned int SYSCON_REG_BITS ; 
 unsigned int SYSCON_REG_SIZE ; 
 struct syscon_gpio_priv* FUNC1 (struct gpio_chip*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct gpio_chip *chip, unsigned offset)
{
	struct syscon_gpio_priv *priv = FUNC1(chip);

	if (priv->data->flags & GPIO_SYSCON_FEAT_DIR) {
		unsigned int offs;

		offs = priv->dir_reg_offset +
		       priv->data->dir_bit_offset + offset;

		FUNC2(priv->syscon,
				   (offs / SYSCON_REG_BITS) * SYSCON_REG_SIZE,
				   FUNC0(offs % SYSCON_REG_BITS), 0);
	}

	return 0;
}