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
struct transient_trig_data {int /*<<< orphan*/  timer; struct led_classdev* led_cdev; } ;
struct led_classdev {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct transient_trig_data* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct led_classdev*,struct transient_trig_data*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  transient_timer_function ; 

__attribute__((used)) static int FUNC3(struct led_classdev *led_cdev)
{
	struct transient_trig_data *tdata;

	tdata = FUNC0(sizeof(struct transient_trig_data), GFP_KERNEL);
	if (!tdata)
		return -ENOMEM;

	FUNC1(led_cdev, tdata);
	tdata->led_cdev = led_cdev;

	FUNC2(&tdata->timer, transient_timer_function, 0);

	return 0;
}