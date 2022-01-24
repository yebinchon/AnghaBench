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
typedef  int u32 ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct hdmi_wp_data {int /*<<< orphan*/  base; } ;
struct hdmi_core_data {int /*<<< orphan*/  adap; struct hdmi_wp_data* wp; } ;

/* Variables and functions */
 int CEC_CAP_LOG_ADDRS ; 
 int CEC_CAP_PASSTHROUGH ; 
 int CEC_CAP_RC ; 
 int CEC_CAP_TRANSMIT ; 
 int /*<<< orphan*/  CEC_MAX_LOG_ADDRS ; 
 int /*<<< orphan*/  HDMI_WP_CLK ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct hdmi_core_data*,char*,int const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  hdmi_cec_adap_ops ; 

int FUNC5(struct platform_device *pdev, struct hdmi_core_data *core,
		  struct hdmi_wp_data *wp)
{
	const u32 caps = CEC_CAP_TRANSMIT | CEC_CAP_LOG_ADDRS |
			 CEC_CAP_PASSTHROUGH | CEC_CAP_RC;
	int ret;

	core->adap = FUNC2(&hdmi_cec_adap_ops, core,
		"omap4", caps, CEC_MAX_LOG_ADDRS);
	ret = FUNC0(core->adap);
	if (ret < 0)
		return ret;
	core->wp = wp;

	/* Disable clock initially, hdmi_cec_adap_enable() manages it */
	FUNC1(core->wp->base, HDMI_WP_CLK, 0, 5, 0);

	ret = FUNC4(core->adap, &pdev->dev);
	if (ret < 0) {
		FUNC3(core->adap);
		return ret;
	}
	return 0;
}