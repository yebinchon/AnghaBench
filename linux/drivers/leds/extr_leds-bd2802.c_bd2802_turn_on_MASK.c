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
struct bd2802_led {TYPE_1__* client; } ;
typedef  enum led_ids { ____Placeholder_led_ids } led_ids ;
typedef  enum led_colors { ____Placeholder_led_colors } led_colors ;
typedef  enum led_bits { ____Placeholder_led_bits } led_bits ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int BD2802_BLINK ; 
 int BD2802_OFF ; 
 int /*<<< orphan*/  FUNC0 (struct bd2802_led*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct bd2802_led*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static void FUNC3(struct bd2802_led *led, enum led_ids id,
				enum led_colors color, enum led_bits led_bit)
{
	if (led_bit == BD2802_OFF) {
		FUNC2(&led->client->dev,
					"Only 'blink' and 'on' are allowed\n");
		return;
	}

	if (led_bit == BD2802_BLINK)
		FUNC0(led, id, color);
	else
		FUNC1(led, id, color);
}