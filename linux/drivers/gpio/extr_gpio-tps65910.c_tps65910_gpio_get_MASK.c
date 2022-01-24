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
 unsigned int GPIO_STS_MASK ; 
 unsigned int TPS65910_GPIO0 ; 
 struct tps65910_gpio* FUNC0 (struct gpio_chip*) ; 
 int /*<<< orphan*/  FUNC1 (struct tps65910*,unsigned int,unsigned int*) ; 

__attribute__((used)) static int FUNC2(struct gpio_chip *gc, unsigned offset)
{
	struct tps65910_gpio *tps65910_gpio = FUNC0(gc);
	struct tps65910 *tps65910 = tps65910_gpio->tps65910;
	unsigned int val;

	FUNC1(tps65910, TPS65910_GPIO0 + offset, &val);

	if (val & GPIO_STS_MASK)
		return 1;

	return 0;
}