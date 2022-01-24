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
struct usb_kbd {scalar_t__* leds; scalar_t__ newleds; int led_urb_submitted; int /*<<< orphan*/  leds_lock; TYPE_1__* led; int /*<<< orphan*/  usbdev; } ;
struct urb {int /*<<< orphan*/  dev; scalar_t__ status; struct usb_kbd* context; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct urb *urb)
{
	unsigned long flags;
	struct usb_kbd *kbd = urb->context;

	if (urb->status)
		FUNC1(urb->dev, "led urb status %d received\n",
			 urb->status);

	FUNC2(&kbd->leds_lock, flags);

	if (*(kbd->leds) == kbd->newleds){
		kbd->led_urb_submitted = false;
		FUNC3(&kbd->leds_lock, flags);
		return;
	}

	*(kbd->leds) = kbd->newleds;
	
	kbd->led->dev = kbd->usbdev;
	if (FUNC4(kbd->led, GFP_ATOMIC)){
		FUNC0(urb->dev, "usb_submit_urb(leds) failed\n");
		kbd->led_urb_submitted = false;
	}
	FUNC3(&kbd->leds_lock, flags);
	
}