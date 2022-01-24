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
struct palmas_usb {int /*<<< orphan*/  id_irq; scalar_t__ enable_id_detection; int /*<<< orphan*/  vbus_irq; scalar_t__ enable_vbus_detection; int /*<<< orphan*/  palmas; } ;

/* Variables and functions */
 int /*<<< orphan*/  PALMAS_USB_ID_CTRL_SET ; 
 int PALMAS_USB_ID_CTRL_SET_ID_ACT_COMP ; 
 int /*<<< orphan*/  PALMAS_USB_ID_INT_EN_HI_SET ; 
 int PALMAS_USB_ID_INT_EN_HI_SET_ID_FLOAT ; 
 int PALMAS_USB_ID_INT_EN_HI_SET_ID_GND ; 
 int /*<<< orphan*/  PALMAS_USB_OTG_BASE ; 
 int /*<<< orphan*/  PALMAS_USB_VBUS_CTRL_SET ; 
 int PALMAS_USB_VBUS_CTRL_SET_VBUS_ACT_COMP ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct palmas_usb*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct palmas_usb*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct palmas_usb *palmas_usb)
{
	FUNC3(palmas_usb->palmas, PALMAS_USB_OTG_BASE,
		PALMAS_USB_VBUS_CTRL_SET,
		PALMAS_USB_VBUS_CTRL_SET_VBUS_ACT_COMP);

	if (palmas_usb->enable_id_detection) {
		FUNC3(palmas_usb->palmas, PALMAS_USB_OTG_BASE,
			     PALMAS_USB_ID_CTRL_SET,
			     PALMAS_USB_ID_CTRL_SET_ID_ACT_COMP);

		FUNC3(palmas_usb->palmas, PALMAS_USB_OTG_BASE,
			     PALMAS_USB_ID_INT_EN_HI_SET,
			     PALMAS_USB_ID_INT_EN_HI_SET_ID_GND |
			     PALMAS_USB_ID_INT_EN_HI_SET_ID_FLOAT);
	}

	if (palmas_usb->enable_vbus_detection)
		FUNC2(palmas_usb->vbus_irq, palmas_usb);

	/* cold plug for host mode needs this delay */
	if (palmas_usb->enable_id_detection) {
		FUNC0(30);
		FUNC1(palmas_usb->id_irq, palmas_usb);
	}
}