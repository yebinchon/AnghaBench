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
struct max77843_muic_info {int /*<<< orphan*/  dev; int /*<<< orphan*/  edev; int /*<<< orphan*/  prev_chg_type; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  EXTCON_CHG_USB_CDP ; 
 int /*<<< orphan*/  EXTCON_CHG_USB_DCP ; 
 int /*<<< orphan*/  EXTCON_CHG_USB_FAST ; 
 int /*<<< orphan*/  EXTCON_CHG_USB_SDP ; 
 int /*<<< orphan*/  EXTCON_CHG_USB_SLOW ; 
 int /*<<< orphan*/  EXTCON_USB ; 
 int /*<<< orphan*/  MAX77843_CABLE_GROUP_ADC_GND ; 
 int /*<<< orphan*/  MAX77843_CABLE_GROUP_CHG ; 
#define  MAX77843_MUIC_CHG_DEDICATED 135 
#define  MAX77843_MUIC_CHG_DOCK 134 
#define  MAX77843_MUIC_CHG_DOWNSTREAM 133 
#define  MAX77843_MUIC_CHG_GND 132 
#define  MAX77843_MUIC_CHG_NONE 131 
#define  MAX77843_MUIC_CHG_SPECIAL_1A 130 
#define  MAX77843_MUIC_CHG_SPECIAL_500MA 129 
#define  MAX77843_MUIC_CHG_USB 128 
 int /*<<< orphan*/  MAX77843_MUIC_CONTROL1_SW_OPEN ; 
 int /*<<< orphan*/  MAX77843_MUIC_CONTROL1_SW_USB ; 
 int MAX77843_MUIC_GND_MHL ; 
 int MAX77843_MUIC_GND_MHL_VB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct max77843_muic_info*,int /*<<< orphan*/ ,int*) ; 
 int FUNC4 (struct max77843_muic_info*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC5(struct max77843_muic_info *info)
{
	int ret, chg_type, gnd_type;
	bool attached;

	chg_type = FUNC3(info,
			MAX77843_CABLE_GROUP_CHG, &attached);

	FUNC0(info->dev,
		"external connector is %s(chg_type:0x%x, prev_chg_type:0x%x)\n",
		attached ? "attached" : "detached",
		chg_type, info->prev_chg_type);

	switch (chg_type) {
	case MAX77843_MUIC_CHG_USB:
		ret = FUNC4(info,
					     MAX77843_MUIC_CONTROL1_SW_USB,
					     attached, false);
		if (ret < 0)
			return ret;

		FUNC2(info->edev, EXTCON_USB, attached);
		FUNC2(info->edev, EXTCON_CHG_USB_SDP,
					attached);
		break;
	case MAX77843_MUIC_CHG_DOWNSTREAM:
		ret = FUNC4(info,
					     MAX77843_MUIC_CONTROL1_SW_OPEN,
					     attached, false);
		if (ret < 0)
			return ret;

		FUNC2(info->edev, EXTCON_CHG_USB_CDP,
					attached);
		break;
	case MAX77843_MUIC_CHG_DEDICATED:
		ret = FUNC4(info,
					     MAX77843_MUIC_CONTROL1_SW_OPEN,
					     attached, false);
		if (ret < 0)
			return ret;

		FUNC2(info->edev, EXTCON_CHG_USB_DCP,
					attached);
		break;
	case MAX77843_MUIC_CHG_SPECIAL_500MA:
		ret = FUNC4(info,
					     MAX77843_MUIC_CONTROL1_SW_OPEN,
					     attached, false);
		if (ret < 0)
			return ret;

		FUNC2(info->edev, EXTCON_CHG_USB_SLOW,
					attached);
		break;
	case MAX77843_MUIC_CHG_SPECIAL_1A:
		ret = FUNC4(info,
					     MAX77843_MUIC_CONTROL1_SW_OPEN,
					     attached, false);
		if (ret < 0)
			return ret;

		FUNC2(info->edev, EXTCON_CHG_USB_FAST,
					attached);
		break;
	case MAX77843_MUIC_CHG_GND:
		gnd_type = FUNC3(info,
				MAX77843_CABLE_GROUP_ADC_GND, &attached);

		/* Charger cable on MHL accessory is attach or detach */
		if (gnd_type == MAX77843_MUIC_GND_MHL_VB)
			FUNC2(info->edev, EXTCON_CHG_USB_DCP,
						true);
		else if (gnd_type == MAX77843_MUIC_GND_MHL)
			FUNC2(info->edev, EXTCON_CHG_USB_DCP,
						false);
		break;
	case MAX77843_MUIC_CHG_DOCK:
		FUNC2(info->edev, EXTCON_CHG_USB_DCP, attached);
		break;
	case MAX77843_MUIC_CHG_NONE:
		break;
	default:
		FUNC1(info->dev,
			"failed to detect %s accessory (chg_type:0x%x)\n",
			attached ? "attached" : "detached", chg_type);

		FUNC4(info, MAX77843_MUIC_CONTROL1_SW_OPEN,
				       attached, false);
		return -EINVAL;
	}

	return 0;
}