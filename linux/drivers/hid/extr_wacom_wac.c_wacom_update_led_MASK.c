#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct wacom_led {int held; int /*<<< orphan*/  trigger; } ;
struct TYPE_8__ {TYPE_3__* groups; } ;
struct TYPE_5__ {scalar_t__ type; } ;
struct TYPE_6__ {TYPE_1__ features; } ;
struct wacom {int /*<<< orphan*/  hdev; TYPE_4__ led; TYPE_2__ wacom_wac; } ;
struct TYPE_7__ {int select; } ;

/* Variables and functions */
 scalar_t__ WACOM_24HD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void FUNC2 (struct wacom*,int,int) ; 
 int FUNC3 (struct wacom*,int,int,int) ; 
 struct wacom_led* FUNC4 (struct wacom*,int,int) ; 
 struct wacom_led* FUNC5 (struct wacom*,struct wacom_led*) ; 
 int /*<<< orphan*/  FUNC6 (struct wacom_led*) ; 

__attribute__((used)) static void FUNC7(struct wacom *wacom, int button_count, int mask,
			     int group)
{
	struct wacom_led *led, *next_led;
	int cur;
	bool pressed;

	if (wacom->wacom_wac.features.type == WACOM_24HD)
		return FUNC2(wacom, mask, group);

	pressed = FUNC3(wacom, button_count, mask, group);
	cur = wacom->led.groups[group].select;

	led = FUNC4(wacom, group, cur);
	if (!led) {
		FUNC0(wacom->hdev, "can't find current LED %d in group %d\n",
			cur, group);
		return;
	}

	if (!pressed) {
		led->held = false;
		return;
	}

	if (led->held && pressed)
		return;

	next_led = FUNC5(wacom, led);
	if (!next_led) {
		FUNC0(wacom->hdev, "can't find next LED in group %d\n",
			group);
		return;
	}
	if (next_led == led)
		return;

	next_led->held = true;
	FUNC1(&next_led->trigger,
			  FUNC6(next_led));
}