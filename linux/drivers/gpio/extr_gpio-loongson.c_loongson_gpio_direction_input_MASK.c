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
typedef  int /*<<< orphan*/  u32 ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  LOONGSON_GPIOIE ; 
 int /*<<< orphan*/  gpio_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct gpio_chip *chip, unsigned gpio)
{
	u32 temp;

	FUNC1(&gpio_lock);
	temp = LOONGSON_GPIOIE;
	temp |= FUNC0(gpio);
	LOONGSON_GPIOIE = temp;
	FUNC2(&gpio_lock);

	return 0;
}