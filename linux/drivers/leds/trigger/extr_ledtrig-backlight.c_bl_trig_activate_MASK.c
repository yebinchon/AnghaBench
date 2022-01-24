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
struct led_classdev {int /*<<< orphan*/  dev; int /*<<< orphan*/  brightness; } ;
struct TYPE_2__ {int /*<<< orphan*/  notifier_call; } ;
struct bl_trig_notifier {TYPE_1__ notifier; int /*<<< orphan*/  old_status; int /*<<< orphan*/  brightness; struct led_classdev* led; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  UNBLANK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  fb_notifier_callback ; 
 int FUNC1 (TYPE_1__*) ; 
 struct bl_trig_notifier* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct led_classdev*,struct bl_trig_notifier*) ; 

__attribute__((used)) static int FUNC4(struct led_classdev *led)
{
	int ret;

	struct bl_trig_notifier *n;

	n = FUNC2(sizeof(struct bl_trig_notifier), GFP_KERNEL);
	if (!n)
		return -ENOMEM;
	FUNC3(led, n);

	n->led = led;
	n->brightness = led->brightness;
	n->old_status = UNBLANK;
	n->notifier.notifier_call = fb_notifier_callback;

	ret = FUNC1(&n->notifier);
	if (ret)
		FUNC0(led->dev, "unable to register backlight trigger\n");

	return 0;
}