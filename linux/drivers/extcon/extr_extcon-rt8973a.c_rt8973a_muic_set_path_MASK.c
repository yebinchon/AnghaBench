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
struct rt8973a_muic_info {int /*<<< orphan*/  dev; int /*<<< orphan*/  regmap; scalar_t__ auto_config; } ;

/* Variables and functions */
#define  DM_DP_SWITCH_OPEN 130 
#define  DM_DP_SWITCH_UART 129 
#define  DM_DP_SWITCH_USB 128 
 int EINVAL ; 
 int /*<<< orphan*/  RT8973A_REG_MANUAL_SW1 ; 
 int RT8973A_REG_MANUAL_SW1_DM_MASK ; 
 int RT8973A_REG_MANUAL_SW1_DP_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,unsigned int) ; 

__attribute__((used)) static int FUNC2(struct rt8973a_muic_info *info,
				unsigned int con_sw, bool attached)
{
	int ret;

	/*
	 * Don't need to set h/w path according to cable type
	 * if Auto-configuration mode of CONTROL1 register is true.
	 */
	if (info->auto_config)
		return 0;

	if (!attached)
		con_sw	= DM_DP_SWITCH_UART;

	switch (con_sw) {
	case DM_DP_SWITCH_OPEN:
	case DM_DP_SWITCH_USB:
	case DM_DP_SWITCH_UART:
		ret = FUNC1(info->regmap, RT8973A_REG_MANUAL_SW1,
					RT8973A_REG_MANUAL_SW1_DP_MASK |
					RT8973A_REG_MANUAL_SW1_DM_MASK,
					con_sw);
		if (ret < 0) {
			FUNC0(info->dev,
				"cannot update DM_CON/DP_CON switch\n");
			return ret;
		}
		break;
	default:
		FUNC0(info->dev, "Unknown DM_CON/DP_CON switch type (%d)\n",
				con_sw);
		return -EINVAL;
	}

	return 0;
}