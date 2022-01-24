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
struct picolcd_data {struct led_classdev** led; } ;
struct led_classdev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct led_classdev*) ; 
 int /*<<< orphan*/  FUNC1 (struct led_classdev*) ; 

void FUNC2(struct picolcd_data *data)
{
	struct led_classdev *led;
	int i;

	for (i = 0; i < 8; i++) {
		led = data->led[i];
		data->led[i] = NULL;
		if (!led)
			continue;
		FUNC1(led);
		FUNC0(led);
	}
}