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
struct xgpio_instance {int /*<<< orphan*/ * gpio_dir; scalar_t__ regs; int /*<<< orphan*/ * gpio_state; int /*<<< orphan*/ * gpio_width; } ;

/* Variables and functions */
 scalar_t__ XGPIO_CHANNEL_OFFSET ; 
 scalar_t__ XGPIO_DATA_OFFSET ; 
 scalar_t__ XGPIO_TRI_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct xgpio_instance *chip)
{
	FUNC0(chip->regs + XGPIO_DATA_OFFSET,	chip->gpio_state[0]);
	FUNC0(chip->regs + XGPIO_TRI_OFFSET, chip->gpio_dir[0]);

	if (!chip->gpio_width[1])
		return;

	FUNC0(chip->regs + XGPIO_DATA_OFFSET + XGPIO_CHANNEL_OFFSET,
		       chip->gpio_state[1]);
	FUNC0(chip->regs + XGPIO_TRI_OFFSET + XGPIO_CHANNEL_OFFSET,
		       chip->gpio_dir[1]);
}