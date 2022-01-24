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
struct max14577_muic_info {int /*<<< orphan*/  dev; int /*<<< orphan*/  edev; int /*<<< orphan*/  path_usb; int /*<<< orphan*/  prev_chg_type; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  EXTCON_CHG_USB_CDP ; 
 int /*<<< orphan*/  EXTCON_CHG_USB_DCP ; 
 int /*<<< orphan*/  EXTCON_CHG_USB_FAST ; 
 int /*<<< orphan*/  EXTCON_CHG_USB_SDP ; 
 int /*<<< orphan*/  EXTCON_CHG_USB_SLOW ; 
 int /*<<< orphan*/  EXTCON_USB ; 
 int /*<<< orphan*/  MAX14577_CABLE_GROUP_CHG ; 
#define  MAX14577_CHARGER_TYPE_DEAD_BATTERY 134 
#define  MAX14577_CHARGER_TYPE_DEDICATED_CHG 133 
#define  MAX14577_CHARGER_TYPE_DOWNSTREAM_PORT 132 
#define  MAX14577_CHARGER_TYPE_NONE 131 
#define  MAX14577_CHARGER_TYPE_SPECIAL_1A 130 
#define  MAX14577_CHARGER_TYPE_SPECIAL_500MA 129 
#define  MAX14577_CHARGER_TYPE_USB 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct max14577_muic_info*,int /*<<< orphan*/ ,int*) ; 
 int FUNC4 (struct max14577_muic_info*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(struct max14577_muic_info *info)
{
	int chg_type;
	bool attached;
	int ret = 0;

	chg_type = FUNC3(info,
				MAX14577_CABLE_GROUP_CHG, &attached);

	FUNC0(info->dev,
		"external connector is %s(chg_type:0x%x, prev_chg_type:0x%x)\n",
			attached ? "attached" : "detached",
			chg_type, info->prev_chg_type);

	switch (chg_type) {
	case MAX14577_CHARGER_TYPE_USB:
		/* PATH:AP_USB */
		ret = FUNC4(info, info->path_usb, attached);
		if (ret < 0)
			return ret;

		FUNC2(info->edev, EXTCON_USB, attached);
		FUNC2(info->edev, EXTCON_CHG_USB_SDP,
					attached);
		break;
	case MAX14577_CHARGER_TYPE_DEDICATED_CHG:
		FUNC2(info->edev, EXTCON_CHG_USB_DCP,
					attached);
		break;
	case MAX14577_CHARGER_TYPE_DOWNSTREAM_PORT:
		FUNC2(info->edev, EXTCON_CHG_USB_CDP,
					attached);
		break;
	case MAX14577_CHARGER_TYPE_SPECIAL_500MA:
		FUNC2(info->edev, EXTCON_CHG_USB_SLOW,
					attached);
		break;
	case MAX14577_CHARGER_TYPE_SPECIAL_1A:
		FUNC2(info->edev, EXTCON_CHG_USB_FAST,
					attached);
		break;
	case MAX14577_CHARGER_TYPE_NONE:
	case MAX14577_CHARGER_TYPE_DEAD_BATTERY:
		break;
	default:
		FUNC1(info->dev,
			"failed to detect %s accessory (chg_type:0x%x)\n",
			attached ? "attached" : "detached", chg_type);
		return -EINVAL;
	}

	return 0;
}