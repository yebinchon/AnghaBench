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
struct palmas_usb {scalar_t__ linkstat; int /*<<< orphan*/  dev; int /*<<< orphan*/  palmas; struct extcon_dev* edev; } ;
struct extcon_dev {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  EXTCON_USB ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  PALMAS_INT3_LINE_STATE ; 
 unsigned int PALMAS_INT3_LINE_STATE_VBUS ; 
 int /*<<< orphan*/  PALMAS_INTERRUPT_BASE ; 
 scalar_t__ PALMAS_USB_STATE_DISCONNECT ; 
 scalar_t__ PALMAS_USB_STATE_VBUS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct extcon_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 

__attribute__((used)) static irqreturn_t FUNC3(int irq, void *_palmas_usb)
{
	struct palmas_usb *palmas_usb = _palmas_usb;
	struct extcon_dev *edev = palmas_usb->edev;
	unsigned int vbus_line_state;

	FUNC2(palmas_usb->palmas, PALMAS_INTERRUPT_BASE,
		PALMAS_INT3_LINE_STATE, &vbus_line_state);

	if (vbus_line_state & PALMAS_INT3_LINE_STATE_VBUS) {
		if (palmas_usb->linkstat != PALMAS_USB_STATE_VBUS) {
			palmas_usb->linkstat = PALMAS_USB_STATE_VBUS;
			FUNC1(edev, EXTCON_USB, true);
			FUNC0(palmas_usb->dev, "USB cable is attached\n");
		} else {
			FUNC0(palmas_usb->dev,
				"Spurious connect event detected\n");
		}
	} else if (!(vbus_line_state & PALMAS_INT3_LINE_STATE_VBUS)) {
		if (palmas_usb->linkstat == PALMAS_USB_STATE_VBUS) {
			palmas_usb->linkstat = PALMAS_USB_STATE_DISCONNECT;
			FUNC1(edev, EXTCON_USB, false);
			FUNC0(palmas_usb->dev, "USB cable is detached\n");
		} else {
			FUNC0(palmas_usb->dev,
				"Spurious disconnect event detected\n");
		}
	}

	return IRQ_HANDLED;
}