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
struct hdmi_wp_data {int /*<<< orphan*/  base; } ;
typedef  enum hdmi_pll_pwr { ____Placeholder_hdmi_pll_pwr } hdmi_pll_pwr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  HDMI_WP_PWR_CTRL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 

int FUNC3(struct hdmi_wp_data *wp, enum hdmi_pll_pwr val)
{
	/* Command for power control of HDMI PLL */
	FUNC1(wp->base, HDMI_WP_PWR_CTRL, val, 3, 2);

	/* wait till PHY_PWR_STATUS is set */
	if (FUNC2(wp->base, HDMI_WP_PWR_CTRL, 1, 0, val)
			!= val) {
		FUNC0("Failed to set PLL_PWR_STATUS\n");
		return -ETIMEDOUT;
	}

	return 0;
}