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
struct pattern_trig_data {int is_indefinite; int last_repeat; int /*<<< orphan*/  timer; struct led_classdev* led_cdev; int /*<<< orphan*/  lock; } ;
struct led_classdev {int activated; int flags; int /*<<< orphan*/ * pattern_clear; int /*<<< orphan*/ * pattern_set; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int LED_INIT_DEFAULT_TRIGGER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 struct pattern_trig_data* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct led_classdev*,struct pattern_trig_data*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct led_classdev*) ; 
 int /*<<< orphan*/  pattern_trig_timer_function ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct led_classdev *led_cdev)
{
	struct pattern_trig_data *data;

	data = FUNC1(sizeof(*data), GFP_KERNEL);
	if (!data)
		return -ENOMEM;

	if (!!led_cdev->pattern_set ^ !!led_cdev->pattern_clear) {
		FUNC0(led_cdev->dev,
			 "Hardware pattern ops validation failed\n");
		led_cdev->pattern_set = NULL;
		led_cdev->pattern_clear = NULL;
	}

	data->is_indefinite = true;
	data->last_repeat = -1;
	FUNC3(&data->lock);
	data->led_cdev = led_cdev;
	FUNC2(led_cdev, data);
	FUNC5(&data->timer, pattern_trig_timer_function, 0);
	led_cdev->activated = true;

	if (led_cdev->flags & LED_INIT_DEFAULT_TRIGGER) {
		FUNC4(led_cdev);
		/*
		 * Mark as initialized even on pattern_init() error because
		 * any consecutive call to it would produce the same error.
		 */
		led_cdev->flags &= ~LED_INIT_DEFAULT_TRIGGER;
	}

	return 0;
}