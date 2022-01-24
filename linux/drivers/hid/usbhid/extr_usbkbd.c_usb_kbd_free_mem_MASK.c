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
struct usb_kbd {int /*<<< orphan*/  leds_dma; int /*<<< orphan*/  leds; int /*<<< orphan*/  cr; int /*<<< orphan*/  new_dma; int /*<<< orphan*/  new; int /*<<< orphan*/  led; int /*<<< orphan*/  irq; } ;
struct usb_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct usb_device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct usb_device *dev, struct usb_kbd *kbd)
{
	FUNC2(kbd->irq);
	FUNC2(kbd->led);
	FUNC1(dev, 8, kbd->new, kbd->new_dma);
	FUNC0(kbd->cr);
	FUNC1(dev, 1, kbd->leds, kbd->leds_dma);
}