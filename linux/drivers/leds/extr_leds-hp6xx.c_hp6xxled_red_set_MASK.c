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
typedef  int u16 ;
struct led_classdev {int dummy; } ;
typedef  enum led_brightness { ____Placeholder_led_brightness } led_brightness ;

/* Variables and functions */
 int /*<<< orphan*/  HD64461_GPBDR ; 
 int HD64461_GPBDR_LED_RED ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct led_classdev *led_cdev,
			     enum led_brightness value)
{
	u16 v16;

	v16 = FUNC0(HD64461_GPBDR);
	if (value)
		FUNC1(v16 & (~HD64461_GPBDR_LED_RED), HD64461_GPBDR);
	else
		FUNC1(v16 | HD64461_GPBDR_LED_RED, HD64461_GPBDR);
}