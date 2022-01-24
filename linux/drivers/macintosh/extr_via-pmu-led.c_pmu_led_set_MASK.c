#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct led_classdev {int dummy; } ;
typedef  enum led_brightness { ____Placeholder_led_brightness } led_brightness ;
struct TYPE_3__ {scalar_t__ complete; } ;

/* Variables and functions */
#define  LED_FULL 129 
#define  LED_OFF 128 
 int /*<<< orphan*/  pmu_blink_lock ; 
 TYPE_1__ pmu_blink_req ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ *,int,int,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  pmu_sys_suspended ; 
 int requested_change ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC3(struct led_classdev *led_cdev,
			enum led_brightness brightness)
{
	unsigned long flags;

	FUNC1(&pmu_blink_lock, flags);
	switch (brightness) {
	case LED_OFF:
		requested_change = 0;
		break;
	case LED_FULL:
		requested_change = 1;
		break;
	default:
		goto out;
		break;
	}
	/* if request isn't done, then don't do anything */
	if (pmu_blink_req.complete && !pmu_sys_suspended)
		FUNC0(&pmu_blink_req, NULL, 4, 0xee, 4, 0, requested_change);
 out:
 	FUNC2(&pmu_blink_lock, flags);
}