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
typedef  int u8 ;
struct axp288_extcon_info {unsigned int previous_cable; int vbus_attach; int /*<<< orphan*/  dev; int /*<<< orphan*/  role_work; scalar_t__ role_sw; int /*<<< orphan*/  edev; int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  AXP288_BC_DET_STAT_REG ; 
 int /*<<< orphan*/  AXP288_BC_GLOBAL_REG ; 
 int BC_GLOBAL_DET_STAT ; 
#define  DET_STAT_CDP 130 
#define  DET_STAT_DCP 129 
 int DET_STAT_MASK ; 
#define  DET_STAT_SDP 128 
 int DET_STAT_SHIFT ; 
 unsigned int EXTCON_CHG_USB_CDP ; 
 unsigned int EXTCON_CHG_USB_DCP ; 
 unsigned int EXTCON_CHG_USB_SDP ; 
 unsigned int EXTCON_USB ; 
 int FUNC0 (struct axp288_extcon_info*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  system_long_wq ; 

__attribute__((used)) static int FUNC7(struct axp288_extcon_info *info)
{
	int ret, stat, cfg;
	u8 chrg_type;
	unsigned int cable = info->previous_cable;
	bool vbus_attach = false;

	vbus_attach = FUNC0(info);
	if (!vbus_attach)
		goto no_vbus;

	/* Check charger detection completion status */
	ret = FUNC6(info->regmap, AXP288_BC_GLOBAL_REG, &cfg);
	if (ret < 0)
		goto dev_det_ret;
	if (cfg & BC_GLOBAL_DET_STAT) {
		FUNC1(info->dev, "can't complete the charger detection\n");
		goto dev_det_ret;
	}

	ret = FUNC6(info->regmap, AXP288_BC_DET_STAT_REG, &stat);
	if (ret < 0)
		goto dev_det_ret;

	chrg_type = (stat & DET_STAT_MASK) >> DET_STAT_SHIFT;

	switch (chrg_type) {
	case DET_STAT_SDP:
		FUNC1(info->dev, "sdp cable is connected\n");
		cable = EXTCON_CHG_USB_SDP;
		break;
	case DET_STAT_CDP:
		FUNC1(info->dev, "cdp cable is connected\n");
		cable = EXTCON_CHG_USB_CDP;
		break;
	case DET_STAT_DCP:
		FUNC1(info->dev, "dcp cable is connected\n");
		cable = EXTCON_CHG_USB_DCP;
		break;
	default:
		FUNC3(info->dev, "unknown (reserved) bc detect result\n");
		cable = EXTCON_CHG_USB_SDP;
	}

no_vbus:
	FUNC4(info->edev, info->previous_cable, false);
	if (info->previous_cable == EXTCON_CHG_USB_SDP)
		FUNC4(info->edev, EXTCON_USB, false);

	if (vbus_attach) {
		FUNC4(info->edev, cable, vbus_attach);
		if (cable == EXTCON_CHG_USB_SDP)
			FUNC4(info->edev, EXTCON_USB,
						vbus_attach);

		info->previous_cable = cable;
	}

	if (info->role_sw && info->vbus_attach != vbus_attach) {
		info->vbus_attach = vbus_attach;
		/* Setting the role can take a while */
		FUNC5(system_long_wq, &info->role_work);
	}

	return 0;

dev_det_ret:
	if (ret < 0)
		FUNC2(info->dev, "failed to detect BC Mod\n");

	return ret;
}