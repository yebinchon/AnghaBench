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
struct usb_kbd {int newleds; int led_urb_submitted; int* leds; int /*<<< orphan*/  leds_lock; TYPE_1__* led; int /*<<< orphan*/  usbdev; } ;
struct input_dev {int /*<<< orphan*/  led; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 unsigned int EV_LED ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  LED_CAPSL ; 
 int /*<<< orphan*/  LED_COMPOSE ; 
 int /*<<< orphan*/  LED_KANA ; 
 int /*<<< orphan*/  LED_NUML ; 
 int /*<<< orphan*/  LED_SCROLLL ; 
 struct usb_kbd* FUNC0 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct input_dev *dev, unsigned int type,
			 unsigned int code, int value)
{
	unsigned long flags;
	struct usb_kbd *kbd = FUNC0(dev);

	if (type != EV_LED)
		return -1;

	FUNC2(&kbd->leds_lock, flags);
	kbd->newleds = (!!FUNC4(LED_KANA,    dev->led) << 3) | (!!FUNC4(LED_COMPOSE, dev->led) << 3) |
		       (!!FUNC4(LED_SCROLLL, dev->led) << 2) | (!!FUNC4(LED_CAPSL,   dev->led) << 1) |
		       (!!FUNC4(LED_NUML,    dev->led));

	if (kbd->led_urb_submitted){
		FUNC3(&kbd->leds_lock, flags);
		return 0;
	}

	if (*(kbd->leds) == kbd->newleds){
		FUNC3(&kbd->leds_lock, flags);
		return 0;
	}

	*(kbd->leds) = kbd->newleds;
	
	kbd->led->dev = kbd->usbdev;
	if (FUNC5(kbd->led, GFP_ATOMIC))
		FUNC1("usb_submit_urb(leds) failed\n");
	else
		kbd->led_urb_submitted = true;
	
	FUNC3(&kbd->leds_lock, flags);
	
	return 0;
}