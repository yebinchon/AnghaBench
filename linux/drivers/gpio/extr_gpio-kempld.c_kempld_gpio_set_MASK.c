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
struct kempld_gpio_data {struct kempld_device_data* pld; } ;
struct kempld_device_data {int dummy; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 struct kempld_gpio_data* FUNC1 (struct gpio_chip*) ; 
 int /*<<< orphan*/  FUNC2 (struct kempld_device_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct kempld_device_data*,int /*<<< orphan*/ ,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct kempld_device_data*) ; 

__attribute__((used)) static void FUNC5(struct gpio_chip *chip, unsigned offset, int value)
{
	struct kempld_gpio_data *gpio = FUNC1(chip);
	struct kempld_device_data *pld = gpio->pld;

	FUNC2(pld);
	FUNC3(pld, FUNC0(offset), offset, value);
	FUNC4(pld);
}