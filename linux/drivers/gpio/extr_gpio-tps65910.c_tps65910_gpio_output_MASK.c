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
struct tps65910_gpio {struct tps65910* tps65910; } ;
struct tps65910 {int dummy; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GPIO_CFG_MASK ; 
 unsigned int TPS65910_GPIO0 ; 
 struct tps65910_gpio* FUNC0 (struct gpio_chip*) ; 
 int /*<<< orphan*/  FUNC1 (struct gpio_chip*,unsigned int,int) ; 
 int FUNC2 (struct tps65910*,unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct gpio_chip *gc, unsigned offset,
				int value)
{
	struct tps65910_gpio *tps65910_gpio = FUNC0(gc);
	struct tps65910 *tps65910 = tps65910_gpio->tps65910;

	/* Set the initial value */
	FUNC1(gc, offset, value);

	return FUNC2(tps65910, TPS65910_GPIO0 + offset,
						GPIO_CFG_MASK);
}