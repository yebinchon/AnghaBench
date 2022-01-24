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
struct dln2_gpio_pin_val {int value; int /*<<< orphan*/  pin; } ;
struct dln2_gpio {int /*<<< orphan*/  pdev; } ;
typedef  int /*<<< orphan*/  req ;

/* Variables and functions */
 int /*<<< orphan*/  DLN2_GPIO_PIN_SET_OUT_VAL ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct dln2_gpio_pin_val*,int) ; 

__attribute__((used)) static int FUNC2(struct dln2_gpio *dln2,
				     unsigned int pin, int value)
{
	struct dln2_gpio_pin_val req = {
		.pin = FUNC0(pin),
		.value = value,
	};

	return FUNC1(dln2->pdev, DLN2_GPIO_PIN_SET_OUT_VAL, &req,
				sizeof(req));
}