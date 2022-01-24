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
struct hdmi_platform_config {int hpd_reg_cnt; int /*<<< orphan*/ * hpd_reg_names; } ;
struct hdmi_connector {struct hdmi* hdmi; } ;
struct hdmi {int /*<<< orphan*/ * hpd_regs; TYPE_1__* pdev; struct hdmi_platform_config* config; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  REG_HDMI_HPD_INT_CTRL ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC1 (struct hdmi*,int) ; 
 int FUNC2 (struct hdmi*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct hdmi*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct hdmi*,int) ; 
 int FUNC5 (struct device*) ; 
 int /*<<< orphan*/  FUNC6 (struct device*) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct hdmi_connector *hdmi_connector)
{
	struct hdmi *hdmi = hdmi_connector->hdmi;
	const struct hdmi_platform_config *config = hdmi->config;
	struct device *dev = &hdmi->pdev->dev;
	int i, ret = 0;

	/* Disable HPD interrupt */
	FUNC3(hdmi, REG_HDMI_HPD_INT_CTRL, 0);

	FUNC4(hdmi, false);

	FUNC1(hdmi, false);
	FUNC6(dev);

	ret = FUNC2(hdmi, false);
	if (ret)
		FUNC0(dev, "failed to unconfigure GPIOs: %d\n", ret);

	ret = FUNC5(dev);
	if (ret)
		FUNC0(dev, "pinctrl state chg failed: %d\n", ret);

	for (i = 0; i < config->hpd_reg_cnt; i++) {
		ret = FUNC7(hdmi->hpd_regs[i]);
		if (ret)
			FUNC0(dev, "failed to disable hpd regulator: %s (%d)\n",
					config->hpd_reg_names[i], ret);
	}
}