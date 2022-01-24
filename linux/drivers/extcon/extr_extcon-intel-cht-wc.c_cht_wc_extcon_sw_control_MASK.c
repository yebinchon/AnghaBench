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
struct cht_wc_extcon_data {int /*<<< orphan*/  dev; int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHT_WC_CHGDISCTRL ; 
 int CHT_WC_CHGDISCTRL_FN ; 
 int /*<<< orphan*/  CHT_WC_CHGRCTRL0 ; 
 int CHT_WC_CHGRCTRL0_CCSM_OFF ; 
 int CHT_WC_CHGRCTRL0_SWCONTROL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC2(struct cht_wc_extcon_data *ext, bool enable)
{
	int ret, mask, val;

	val = enable ? 0 : CHT_WC_CHGDISCTRL_FN;
	ret = FUNC1(ext->regmap, CHT_WC_CHGDISCTRL,
				 CHT_WC_CHGDISCTRL_FN, val);
	if (ret)
		FUNC0(ext->dev,
			"Error setting sw control for CHGDIS pin: %d\n",
			ret);

	mask = CHT_WC_CHGRCTRL0_SWCONTROL | CHT_WC_CHGRCTRL0_CCSM_OFF;
	val = enable ? mask : 0;
	ret = FUNC1(ext->regmap, CHT_WC_CHGRCTRL0, mask, val);
	if (ret)
		FUNC0(ext->dev, "Error setting sw control: %d\n", ret);

	return ret;
}