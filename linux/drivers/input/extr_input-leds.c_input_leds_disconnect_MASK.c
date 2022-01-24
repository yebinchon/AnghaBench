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
struct input_leds {int num_leds; struct input_led* leds; } ;
struct TYPE_2__ {struct input_leds* name; } ;
struct input_led {TYPE_1__ cdev; } ;
struct input_handle {struct input_leds* private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct input_handle*) ; 
 int /*<<< orphan*/  FUNC1 (struct input_handle*) ; 
 int /*<<< orphan*/  FUNC2 (struct input_leds*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC4(struct input_handle *handle)
{
	struct input_leds *leds = handle->private;
	int i;

	for (i = 0; i < leds->num_leds; i++) {
		struct input_led *led = &leds->leds[i];

		FUNC3(&led->cdev);
		FUNC2(led->cdev.name);
	}

	FUNC0(handle);
	FUNC1(handle);

	FUNC2(leds);
}