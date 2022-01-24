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
typedef  int u64 ;
struct thunderx_gpio {int /*<<< orphan*/  lock; scalar_t__ register_base; int /*<<< orphan*/  od_mask; int /*<<< orphan*/  invert_mask; TYPE_1__* line_entries; } ;
struct gpio_chip {int dummy; } ;
struct TYPE_2__ {int fil_bits; } ;

/* Variables and functions */
 int EIO ; 
 int GPIO_BIT_CFG_PIN_XOR ; 
 int GPIO_BIT_CFG_TX_OD ; 
 int GPIO_BIT_CFG_TX_OE ; 
 scalar_t__ FUNC0 (unsigned int) ; 
 struct thunderx_gpio* FUNC1 (struct gpio_chip*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct thunderx_gpio*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (struct gpio_chip*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC7 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC8(struct gpio_chip *chip, unsigned int line,
				 int value)
{
	struct thunderx_gpio *txgpio = FUNC1(chip);
	u64 bit_cfg = txgpio->line_entries[line].fil_bits | GPIO_BIT_CFG_TX_OE;

	if (!FUNC5(txgpio, line))
		return -EIO;

	FUNC2(&txgpio->lock);

	FUNC6(chip, line, value);

	if (FUNC4(line, txgpio->invert_mask))
		bit_cfg |= GPIO_BIT_CFG_PIN_XOR;

	if (FUNC4(line, txgpio->od_mask))
		bit_cfg |= GPIO_BIT_CFG_TX_OD;

	FUNC7(bit_cfg, txgpio->register_base + FUNC0(line));

	FUNC3(&txgpio->lock);
	return 0;
}