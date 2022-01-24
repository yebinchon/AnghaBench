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
struct oneshot_trig_data {int dummy; } ;
struct led_classdev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  LED_OFF ; 
 int /*<<< orphan*/  FUNC0 (struct oneshot_trig_data*) ; 
 struct oneshot_trig_data* FUNC1 (struct led_classdev*) ; 
 int /*<<< orphan*/  FUNC2 (struct led_classdev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct led_classdev *led_cdev)
{
	struct oneshot_trig_data *oneshot_data = FUNC1(led_cdev);

	FUNC0(oneshot_data);

	/* Stop blinking */
	FUNC2(led_cdev, LED_OFF);
}