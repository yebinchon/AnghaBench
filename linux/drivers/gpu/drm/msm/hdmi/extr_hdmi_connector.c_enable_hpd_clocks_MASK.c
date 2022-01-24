#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct hdmi_platform_config {int hpd_clk_cnt; int /*<<< orphan*/ * hpd_clk_names; scalar_t__* hpd_freq; } ;
struct hdmi {int /*<<< orphan*/ * hpd_clks; TYPE_1__* pdev; struct hdmi_platform_config* config; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC5(struct hdmi *hdmi, bool enable)
{
	const struct hdmi_platform_config *config = hdmi->config;
	struct device *dev = &hdmi->pdev->dev;
	int i, ret;

	if (enable) {
		for (i = 0; i < config->hpd_clk_cnt; i++) {
			if (config->hpd_freq && config->hpd_freq[i]) {
				ret = FUNC3(hdmi->hpd_clks[i],
						   config->hpd_freq[i]);
				if (ret)
					FUNC4(dev,
						 "failed to set clk %s (%d)\n",
						 config->hpd_clk_names[i], ret);
			}

			ret = FUNC2(hdmi->hpd_clks[i]);
			if (ret) {
				FUNC0(dev,
					"failed to enable hpd clk: %s (%d)\n",
					config->hpd_clk_names[i], ret);
			}
		}
	} else {
		for (i = config->hpd_clk_cnt - 1; i >= 0; i--)
			FUNC1(hdmi->hpd_clks[i]);
	}
}