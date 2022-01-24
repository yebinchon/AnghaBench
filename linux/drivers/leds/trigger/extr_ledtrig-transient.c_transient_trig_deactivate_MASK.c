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
struct transient_trig_data {int /*<<< orphan*/  restore_state; int /*<<< orphan*/  timer; } ;
struct led_classdev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct transient_trig_data*) ; 
 struct transient_trig_data* FUNC2 (struct led_classdev*) ; 
 int /*<<< orphan*/  FUNC3 (struct led_classdev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct led_classdev *led_cdev)
{
	struct transient_trig_data *transient_data = FUNC2(led_cdev);

	FUNC0(&transient_data->timer);
	FUNC3(led_cdev, transient_data->restore_state);
	FUNC1(transient_data);
}