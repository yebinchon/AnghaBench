#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct da9052_led {size_t led_index; TYPE_1__* da9052; } ;
typedef  enum led_brightness { ____Placeholder_led_brightness } led_brightness ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int DA9052_LED_CONT_DIM ; 
 int FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/ * led_reg ; 

__attribute__((used)) static int FUNC2(struct da9052_led *led,
				     enum led_brightness brightness)
{
	u8 val;
	int error;

	val = (brightness & 0x7f) | DA9052_LED_CONT_DIM;

	error = FUNC0(led->da9052, led_reg[led->led_index], val);
	if (error < 0)
		FUNC1(led->da9052->dev, "Failed to set led brightness, %d\n",
			error);
	return error;
}