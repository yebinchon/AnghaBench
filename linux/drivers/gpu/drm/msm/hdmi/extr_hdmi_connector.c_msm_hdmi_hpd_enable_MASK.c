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
typedef  int uint32_t ;
struct hdmi_platform_config {int hpd_reg_cnt; int /*<<< orphan*/ * hpd_reg_names; } ;
struct hdmi_connector {struct hdmi* hdmi; } ;
struct hdmi {int /*<<< orphan*/  reg_lock; int /*<<< orphan*/ * hpd_regs; TYPE_1__* pdev; struct hdmi_platform_config* config; } ;
struct drm_connector {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int,...) ; 
 int HDMI_HPD_CTRL_ENABLE ; 
 int FUNC1 (int) ; 
 int HDMI_HPD_INT_CTRL_INT_CONNECT ; 
 int HDMI_HPD_INT_CTRL_INT_EN ; 
 int /*<<< orphan*/  REG_HDMI_HPD_CTRL ; 
 int /*<<< orphan*/  REG_HDMI_HPD_INT_CTRL ; 
 int /*<<< orphan*/  REG_HDMI_USEC_REFTIMER ; 
 int /*<<< orphan*/  FUNC2 (struct hdmi*,int) ; 
 int FUNC3 (struct hdmi*,int) ; 
 int FUNC4 (struct hdmi*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct hdmi*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct hdmi*) ; 
 int /*<<< orphan*/  FUNC7 (struct hdmi*,int) ; 
 int FUNC8 (struct device*) ; 
 int /*<<< orphan*/  FUNC9 (struct device*) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,unsigned long) ; 
 struct hdmi_connector* FUNC13 (struct drm_connector*) ; 

int FUNC14(struct drm_connector *connector)
{
	struct hdmi_connector *hdmi_connector = FUNC13(connector);
	struct hdmi *hdmi = hdmi_connector->hdmi;
	const struct hdmi_platform_config *config = hdmi->config;
	struct device *dev = &hdmi->pdev->dev;
	uint32_t hpd_ctrl;
	int i, ret;
	unsigned long flags;

	for (i = 0; i < config->hpd_reg_cnt; i++) {
		ret = FUNC10(hdmi->hpd_regs[i]);
		if (ret) {
			FUNC0(dev, "failed to enable hpd regulator: %s (%d)\n",
					config->hpd_reg_names[i], ret);
			goto fail;
		}
	}

	ret = FUNC8(dev);
	if (ret) {
		FUNC0(dev, "pinctrl state chg failed: %d\n", ret);
		goto fail;
	}

	ret = FUNC3(hdmi, true);
	if (ret) {
		FUNC0(dev, "failed to configure GPIOs: %d\n", ret);
		goto fail;
	}

	FUNC9(dev);
	FUNC2(hdmi, true);

	FUNC7(hdmi, false);
	FUNC6(hdmi);
	FUNC7(hdmi, true);

	FUNC5(hdmi, REG_HDMI_USEC_REFTIMER, 0x0001001b);

	/* enable HPD events: */
	FUNC5(hdmi, REG_HDMI_HPD_INT_CTRL,
			HDMI_HPD_INT_CTRL_INT_CONNECT |
			HDMI_HPD_INT_CTRL_INT_EN);

	/* set timeout to 4.1ms (max) for hardware debounce */
	FUNC11(&hdmi->reg_lock, flags);
	hpd_ctrl = FUNC4(hdmi, REG_HDMI_HPD_CTRL);
	hpd_ctrl |= FUNC1(0x1fff);

	/* Toggle HPD circuit to trigger HPD sense */
	FUNC5(hdmi, REG_HDMI_HPD_CTRL,
			~HDMI_HPD_CTRL_ENABLE & hpd_ctrl);
	FUNC5(hdmi, REG_HDMI_HPD_CTRL,
			HDMI_HPD_CTRL_ENABLE | hpd_ctrl);
	FUNC12(&hdmi->reg_lock, flags);

	return 0;

fail:
	return ret;
}