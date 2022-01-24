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
struct max77843_muic_info {int /*<<< orphan*/  dev; int /*<<< orphan*/  edev; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  EXTCON_DISP_MHL ; 
 int /*<<< orphan*/  EXTCON_USB_HOST ; 
 int /*<<< orphan*/  MAX77843_CABLE_GROUP_ADC_GND ; 
 int /*<<< orphan*/  MAX77843_MUIC_CONTROL1_SW_OPEN ; 
 int /*<<< orphan*/  MAX77843_MUIC_CONTROL1_SW_USB ; 
#define  MAX77843_MUIC_GND_MHL 131 
#define  MAX77843_MUIC_GND_MHL_VB 130 
#define  MAX77843_MUIC_GND_USB_HOST 129 
#define  MAX77843_MUIC_GND_USB_HOST_VB 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct max77843_muic_info*,int) ; 
 int FUNC4 (struct max77843_muic_info*,int /*<<< orphan*/ ,int*) ; 
 int FUNC5 (struct max77843_muic_info*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC6(struct max77843_muic_info *info)
{
	int ret, gnd_cable_type;
	bool attached;

	gnd_cable_type = FUNC4(info,
			MAX77843_CABLE_GROUP_ADC_GND, &attached);
	FUNC0(info->dev, "external connector is %s (gnd:0x%02x)\n",
			attached ? "attached" : "detached", gnd_cable_type);

	switch (gnd_cable_type) {
	case MAX77843_MUIC_GND_USB_HOST:
	case MAX77843_MUIC_GND_USB_HOST_VB:
		ret = FUNC5(info,
					     MAX77843_MUIC_CONTROL1_SW_USB,
					     attached, false);
		if (ret < 0)
			return ret;

		FUNC2(info->edev, EXTCON_USB_HOST, attached);
		FUNC3(info, attached);
		break;
	case MAX77843_MUIC_GND_MHL_VB:
	case MAX77843_MUIC_GND_MHL:
		ret = FUNC5(info,
					     MAX77843_MUIC_CONTROL1_SW_OPEN,
					     attached, false);
		if (ret < 0)
			return ret;

		FUNC2(info->edev, EXTCON_DISP_MHL, attached);
		break;
	default:
		FUNC1(info->dev, "failed to detect %s accessory(gnd:0x%x)\n",
			attached ? "attached" : "detached", gnd_cable_type);
		return -EINVAL;
	}

	return 0;
}