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
struct stmpe_gpio {int norequest_mask; struct stmpe* stmpe; } ;
struct stmpe {int dummy; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 int FUNC0 (unsigned int) ; 
 int EINVAL ; 
 int /*<<< orphan*/  STMPE_BLOCK_GPIO ; 
 struct stmpe_gpio* FUNC1 (struct gpio_chip*) ; 
 int FUNC2 (struct stmpe*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct gpio_chip *chip, unsigned offset)
{
	struct stmpe_gpio *stmpe_gpio = FUNC1(chip);
	struct stmpe *stmpe = stmpe_gpio->stmpe;

	if (stmpe_gpio->norequest_mask & FUNC0(offset))
		return -EINVAL;

	return FUNC2(stmpe, FUNC0(offset), STMPE_BLOCK_GPIO);
}