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
struct gpio_chip {int /*<<< orphan*/  bgpio_lock; } ;
struct cdns_gpio_chip {int bypass_orig; scalar_t__ regs; } ;

/* Variables and functions */
 int FUNC0 (unsigned int) ; 
 scalar_t__ CDNS_GPIO_BYPASS_MODE ; 
 struct cdns_gpio_chip* FUNC1 (struct gpio_chip*) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC6(struct gpio_chip *chip, unsigned int offset)
{
	struct cdns_gpio_chip *cgpio = FUNC1(chip);
	unsigned long flags;

	FUNC4(&chip->bgpio_lock, flags);

	FUNC3(FUNC2(cgpio->regs + CDNS_GPIO_BYPASS_MODE) |
		  (FUNC0(offset) & cgpio->bypass_orig),
		  cgpio->regs + CDNS_GPIO_BYPASS_MODE);

	FUNC5(&chip->bgpio_lock, flags);
}