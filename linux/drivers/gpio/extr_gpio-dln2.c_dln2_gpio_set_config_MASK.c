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
struct gpio_chip {int dummy; } ;
struct dln2_gpio {int /*<<< orphan*/  pdev; } ;
typedef  int /*<<< orphan*/  duration ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int /*<<< orphan*/  DLN2_GPIO_SET_DEBOUNCE ; 
 int ENOTSUPP ; 
 scalar_t__ PIN_CONFIG_INPUT_DEBOUNCE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 struct dln2_gpio* FUNC2 (struct gpio_chip*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 scalar_t__ FUNC4 (unsigned long) ; 

__attribute__((used)) static int FUNC5(struct gpio_chip *chip, unsigned offset,
				unsigned long config)
{
	struct dln2_gpio *dln2 = FUNC2(chip);
	__le32 duration;

	if (FUNC4(config) != PIN_CONFIG_INPUT_DEBOUNCE)
		return -ENOTSUPP;

	duration = FUNC0(FUNC3(config));
	return FUNC1(dln2->pdev, DLN2_GPIO_SET_DEBOUNCE,
				&duration, sizeof(duration));
}