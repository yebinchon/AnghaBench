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
 int /*<<< orphan*/  CHT_WC_CHGRCTRL1 ; 
 unsigned int CHT_WC_CHGRCTRL1_OTGMODE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,unsigned int) ; 

__attribute__((used)) static void FUNC2(struct cht_wc_extcon_data *ext,
				      bool enable)
{
	unsigned int val = enable ? CHT_WC_CHGRCTRL1_OTGMODE : 0;
	int ret;

	ret = FUNC1(ext->regmap, CHT_WC_CHGRCTRL1,
				 CHT_WC_CHGRCTRL1_OTGMODE, val);
	if (ret)
		FUNC0(ext->dev, "Error updating CHGRCTRL1 reg: %d\n", ret);
}