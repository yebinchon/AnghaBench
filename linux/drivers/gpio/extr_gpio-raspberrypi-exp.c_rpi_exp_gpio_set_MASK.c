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
struct rpi_exp_gpio {int /*<<< orphan*/  fw; } ;
struct gpio_get_set_state {unsigned int gpio; int state; } ;
struct gpio_chip {int /*<<< orphan*/  parent; } ;
typedef  int /*<<< orphan*/  set ;

/* Variables and functions */
 int RPI_EXP_GPIO_BASE ; 
 int /*<<< orphan*/  RPI_FIRMWARE_SET_GPIO_STATE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,unsigned int,int,unsigned int) ; 
 struct rpi_exp_gpio* FUNC1 (struct gpio_chip*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct gpio_get_set_state*,int) ; 

__attribute__((used)) static void FUNC3(struct gpio_chip *gc, unsigned int off, int val)
{
	struct rpi_exp_gpio *gpio;
	struct gpio_get_set_state set;
	int ret;

	gpio = FUNC1(gc);

	set.gpio = off + RPI_EXP_GPIO_BASE;	/* GPIO to update */
	set.state = val;	/* Output state */

	ret = FUNC2(gpio->fw, RPI_FIRMWARE_SET_GPIO_STATE,
					 &set, sizeof(set));
	if (ret || set.gpio != 0)
		FUNC0(gc->parent,
			"Failed to set GPIO %u state (%d %x)\n", off, ret,
			set.gpio);
}