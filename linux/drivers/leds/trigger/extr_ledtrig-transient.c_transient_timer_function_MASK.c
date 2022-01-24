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
struct transient_trig_data {int /*<<< orphan*/  restore_state; scalar_t__ activate; struct led_classdev* led_cdev; } ;
struct timer_list {int dummy; } ;
struct led_classdev {int dummy; } ;

/* Variables and functions */
 struct transient_trig_data* FUNC0 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct led_classdev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  timer ; 
 struct transient_trig_data* transient_data ; 

__attribute__((used)) static void FUNC2(struct timer_list *t)
{
	struct transient_trig_data *transient_data =
		FUNC0(transient_data, t, timer);
	struct led_classdev *led_cdev = transient_data->led_cdev;

	transient_data->activate = 0;
	FUNC1(led_cdev, transient_data->restore_state);
}