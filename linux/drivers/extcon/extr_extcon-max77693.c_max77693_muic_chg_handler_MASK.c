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
struct max77693_muic_info {int /*<<< orphan*/  dev; int /*<<< orphan*/  edev; int /*<<< orphan*/  path_usb; int /*<<< orphan*/  prev_chg_type; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  EXTCON_CHG_USB_CDP ; 
 int /*<<< orphan*/  EXTCON_CHG_USB_DCP ; 
 int /*<<< orphan*/  EXTCON_CHG_USB_FAST ; 
 int /*<<< orphan*/  EXTCON_CHG_USB_SDP ; 
 int /*<<< orphan*/  EXTCON_CHG_USB_SLOW ; 
 int /*<<< orphan*/  EXTCON_DISP_MHL ; 
 int /*<<< orphan*/  EXTCON_DOCK ; 
 int /*<<< orphan*/  EXTCON_USB ; 
 int /*<<< orphan*/  MAX77693_CABLE_GROUP_ADC ; 
 int /*<<< orphan*/  MAX77693_CABLE_GROUP_ADC_GND ; 
 int /*<<< orphan*/  MAX77693_CABLE_GROUP_CHG ; 
#define  MAX77693_CHARGER_TYPE_APPLE_1A_2A 138 
#define  MAX77693_CHARGER_TYPE_APPLE_500MA 137 
#define  MAX77693_CHARGER_TYPE_DEAD_BATTERY 136 
#define  MAX77693_CHARGER_TYPE_DEDICATED_CHG 135 
#define  MAX77693_CHARGER_TYPE_DOWNSTREAM_PORT 134 
#define  MAX77693_CHARGER_TYPE_NONE 133 
#define  MAX77693_CHARGER_TYPE_USB 132 
#define  MAX77693_MUIC_ADC_AV_CABLE_NOLOAD 131 
#define  MAX77693_MUIC_ADC_RESERVED_ACC_3 130 
#define  MAX77693_MUIC_GND_MHL 129 
#define  MAX77693_MUIC_GND_MHL_VB 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct max77693_muic_info*,int /*<<< orphan*/ ,int*) ; 
 int FUNC4 (struct max77693_muic_info*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(struct max77693_muic_info *info)
{
	int chg_type;
	int cable_type_gnd;
	int cable_type;
	bool attached;
	bool cable_attached;
	int ret = 0;

	chg_type = FUNC3(info,
				MAX77693_CABLE_GROUP_CHG, &attached);

	FUNC1(info->dev,
		"external connector is %s(chg_type:0x%x, prev_chg_type:0x%x)\n",
			attached ? "attached" : "detached",
			chg_type, info->prev_chg_type);

	switch (chg_type) {
	case MAX77693_CHARGER_TYPE_USB:
	case MAX77693_CHARGER_TYPE_DEDICATED_CHG:
	case MAX77693_CHARGER_TYPE_NONE:
		/* Check MAX77693_CABLE_GROUP_ADC_GND type */
		cable_type_gnd = FUNC3(info,
					MAX77693_CABLE_GROUP_ADC_GND,
					&cable_attached);
		switch (cable_type_gnd) {
		case MAX77693_MUIC_GND_MHL:
		case MAX77693_MUIC_GND_MHL_VB:
			/*
			 * MHL cable with USB/TA cable
			 * - MHL cable include two port(HDMI line and separate
			 * micro-usb port. When the target connect MHL cable,
			 * extcon driver check whether USB/TA cable is
			 * connected. If USB/TA cable is connected, extcon
			 * driver notify state to notifiee for charging battery.
			 *
			 * Features of 'USB/TA with MHL cable'
			 * - Support MHL
			 * - Support charging through micro-usb port without
			 *   data connection
			 */
			FUNC2(info->edev, EXTCON_CHG_USB_DCP,
						attached);
			FUNC2(info->edev, EXTCON_DISP_MHL,
						cable_attached);
			break;
		}

		/* Check MAX77693_CABLE_GROUP_ADC type */
		cable_type = FUNC3(info,
					MAX77693_CABLE_GROUP_ADC,
					&cable_attached);
		switch (cable_type) {
		case MAX77693_MUIC_ADC_AV_CABLE_NOLOAD:		/* Dock-Audio */
			/*
			 * Dock-Audio device with USB/TA cable
			 * - Dock device include two port(Dock-Audio and micro-
			 * usb port). When the target connect Dock-Audio device,
			 * extcon driver check whether USB/TA cable is connected
			 * or not. If USB/TA cable is connected, extcon driver
			 * notify state to notifiee for charging battery.
			 *
			 * Features of 'USB/TA cable with Dock-Audio device'
			 * - Support external output feature of audio.
			 * - Support charging through micro-usb port without
			 *   data connection.
			 */
			FUNC2(info->edev, EXTCON_USB,
						attached);
			FUNC2(info->edev, EXTCON_CHG_USB_SDP,
						attached);

			if (!cable_attached)
				FUNC2(info->edev, EXTCON_DOCK,
							cable_attached);
			break;
		case MAX77693_MUIC_ADC_RESERVED_ACC_3:		/* Dock-Smart */
			/*
			 * Dock-Smart device with USB/TA cable
			 * - Dock-Desk device include three type of cable which
			 * are HDMI, USB for mouse/keyboard and micro-usb port
			 * for USB/TA cable. Dock-Smart device need always
			 * exteranl power supply(USB/TA cable through micro-usb
			 * cable). Dock-Smart device support screen output of
			 * target to separate monitor and mouse/keyboard for
			 * desktop mode.
			 *
			 * Features of 'USB/TA cable with Dock-Smart device'
			 * - Support MHL
			 * - Support external output feature of audio
			 * - Support charging through micro-usb port without
			 *   data connection if TA cable is connected to target.
			 * - Support charging and data connection through micro-
			 *   usb port if USB cable is connected between target
			 *   and host device
			 * - Support OTG(On-The-Go) device (Ex: Mouse/Keyboard)
			 */
			ret = FUNC4(info, info->path_usb,
						    attached);
			if (ret < 0)
				return ret;

			FUNC2(info->edev, EXTCON_DOCK,
						attached);
			FUNC2(info->edev, EXTCON_DISP_MHL,
						attached);
			break;
		}

		/* Check MAX77693_CABLE_GROUP_CHG type */
		switch (chg_type) {
		case MAX77693_CHARGER_TYPE_NONE:
			/*
			 * When MHL(with USB/TA cable) or Dock-Audio with USB/TA
			 * cable is attached, muic device happen below two irq.
			 * - 'MAX77693_MUIC_IRQ_INT1_ADC' for detecting
			 *    MHL/Dock-Audio.
			 * - 'MAX77693_MUIC_IRQ_INT2_CHGTYP' for detecting
			 *    USB/TA cable connected to MHL or Dock-Audio.
			 * Always, happen eariler MAX77693_MUIC_IRQ_INT1_ADC
			 * irq than MAX77693_MUIC_IRQ_INT2_CHGTYP irq.
			 *
			 * If user attach MHL (with USB/TA cable and immediately
			 * detach MHL with USB/TA cable before MAX77693_MUIC_IRQ
			 * _INT2_CHGTYP irq is happened, USB/TA cable remain
			 * connected state to target. But USB/TA cable isn't
			 * connected to target. The user be face with unusual
			 * action. So, driver should check this situation in
			 * spite of, that previous charger type is N/A.
			 */
			break;
		case MAX77693_CHARGER_TYPE_USB:
			/* Only USB cable, PATH:AP_USB */
			ret = FUNC4(info, info->path_usb,
						    attached);
			if (ret < 0)
				return ret;

			FUNC2(info->edev, EXTCON_USB,
						attached);
			FUNC2(info->edev, EXTCON_CHG_USB_SDP,
						attached);
			break;
		case MAX77693_CHARGER_TYPE_DEDICATED_CHG:
			/* Only TA cable */
			FUNC2(info->edev, EXTCON_CHG_USB_DCP,
						attached);
			break;
		}
		break;
	case MAX77693_CHARGER_TYPE_DOWNSTREAM_PORT:
		FUNC2(info->edev, EXTCON_CHG_USB_CDP,
					attached);
		break;
	case MAX77693_CHARGER_TYPE_APPLE_500MA:
		FUNC2(info->edev, EXTCON_CHG_USB_SLOW,
					attached);
		break;
	case MAX77693_CHARGER_TYPE_APPLE_1A_2A:
		FUNC2(info->edev, EXTCON_CHG_USB_FAST,
					attached);
		break;
	case MAX77693_CHARGER_TYPE_DEAD_BATTERY:
		break;
	default:
		FUNC0(info->dev,
			"failed to detect %s accessory (chg_type:0x%x)\n",
			attached ? "attached" : "detached", chg_type);
		return -EINVAL;
	}

	return 0;
}