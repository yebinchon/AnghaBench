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
struct ucb1400_gpio {int /*<<< orphan*/  ac97; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 struct ucb1400_gpio* FUNC0 (struct gpio_chip*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static int FUNC2(struct gpio_chip *gc, unsigned off)
{
	struct ucb1400_gpio *gpio;

	gpio = FUNC0(gc);
	return !!FUNC1(gpio->ac97, off);
}