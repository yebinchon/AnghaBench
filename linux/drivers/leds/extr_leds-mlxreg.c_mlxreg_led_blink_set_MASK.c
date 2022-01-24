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
struct mlxreg_led_data {scalar_t__ base_color; } ;
struct led_classdev {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 unsigned long MLXREG_LED_BLINK_3HZ ; 
 unsigned long MLXREG_LED_BLINK_6HZ ; 
 scalar_t__ MLXREG_LED_OFFSET_BLINK_3HZ ; 
 scalar_t__ MLXREG_LED_OFFSET_BLINK_6HZ ; 
 struct mlxreg_led_data* FUNC0 (struct led_classdev*) ; 
 int FUNC1 (struct mlxreg_led_data*,scalar_t__) ; 

__attribute__((used)) static int
FUNC2(struct led_classdev *cled, unsigned long *delay_on,
		     unsigned long *delay_off)
{
	struct mlxreg_led_data *led_data = FUNC0(cled);
	int err;

	/*
	 * HW supports two types of blinking: full (6Hz) and half (3Hz).
	 * For delay on/off zero LED is setting to solid color. For others
	 * combination blinking is to be controlled by the software timer.
	 */
	if (!(*delay_on == 0 && *delay_off == 0) &&
	    !(*delay_on == MLXREG_LED_BLINK_3HZ &&
	      *delay_off == MLXREG_LED_BLINK_3HZ) &&
	    !(*delay_on == MLXREG_LED_BLINK_6HZ &&
	      *delay_off == MLXREG_LED_BLINK_6HZ))
		return -EINVAL;

	if (*delay_on == MLXREG_LED_BLINK_6HZ)
		err = FUNC1(led_data, led_data->base_color +
					  MLXREG_LED_OFFSET_BLINK_6HZ);
	else if (*delay_on == MLXREG_LED_BLINK_3HZ)
		err = FUNC1(led_data, led_data->base_color +
					  MLXREG_LED_OFFSET_BLINK_3HZ);
	else
		err = FUNC1(led_data, led_data->base_color);

	return err;
}