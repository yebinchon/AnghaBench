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
struct led_classdev {int dummy; } ;
struct as3645a {int indicator_current; } ;
typedef  enum led_brightness { ____Placeholder_led_brightness } led_brightness ;

/* Variables and functions */
 int /*<<< orphan*/  AS_MODE_INDICATOR ; 
 int FUNC0 (struct as3645a*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct as3645a*) ; 
 struct as3645a* FUNC2 (struct led_classdev*) ; 

__attribute__((used)) static int FUNC3(struct led_classdev *iled_cdev,
					    enum led_brightness brightness)
{
	struct as3645a *flash = FUNC2(iled_cdev);
	int rval;

	flash->indicator_current = brightness;

	rval = FUNC1(flash);
	if (rval)
		return rval;

	return FUNC0(flash, AS_MODE_INDICATOR, brightness);
}