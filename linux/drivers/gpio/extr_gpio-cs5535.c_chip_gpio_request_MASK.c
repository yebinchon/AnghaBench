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
struct gpio_chip {int dummy; } ;
struct cs5535_gpio_chip {int /*<<< orphan*/  lock; TYPE_1__* pdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  GPIO_INPUT_AUX1 ; 
 int /*<<< orphan*/  GPIO_OUTPUT_AUX1 ; 
 int /*<<< orphan*/  GPIO_OUTPUT_AUX2 ; 
 int /*<<< orphan*/  FUNC0 (struct cs5535_gpio_chip*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,unsigned int) ; 
 struct cs5535_gpio_chip* FUNC2 (struct gpio_chip*) ; 
 int mask ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC5(struct gpio_chip *c, unsigned offset)
{
	struct cs5535_gpio_chip *chip = FUNC2(c);
	unsigned long flags;

	FUNC3(&chip->lock, flags);

	/* check if this pin is available */
	if ((mask & (1 << offset)) == 0) {
		FUNC1(&chip->pdev->dev,
			"pin %u is not available (check mask)\n", offset);
		FUNC4(&chip->lock, flags);
		return -EINVAL;
	}

	/* disable output aux 1 & 2 on this pin */
	FUNC0(chip, offset, GPIO_OUTPUT_AUX1);
	FUNC0(chip, offset, GPIO_OUTPUT_AUX2);

	/* disable input aux 1 on this pin */
	FUNC0(chip, offset, GPIO_INPUT_AUX1);

	FUNC4(&chip->lock, flags);

	return 0;
}