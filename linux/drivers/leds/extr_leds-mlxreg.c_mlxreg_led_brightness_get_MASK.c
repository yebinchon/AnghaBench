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
struct mlxreg_led_data {int dummy; } ;
struct led_classdev {int dummy; } ;
typedef  enum led_brightness { ____Placeholder_led_brightness } led_brightness ;

/* Variables and functions */
 struct mlxreg_led_data* FUNC0 (struct led_classdev*) ; 
 int FUNC1 (struct mlxreg_led_data*) ; 

__attribute__((used)) static enum led_brightness
FUNC2(struct led_classdev *cled)
{
	struct mlxreg_led_data *led_data = FUNC0(cled);

	return FUNC1(led_data);
}