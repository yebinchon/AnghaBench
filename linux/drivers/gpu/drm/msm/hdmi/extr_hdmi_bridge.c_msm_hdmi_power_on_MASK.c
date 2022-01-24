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
struct hdmi_platform_config {int pwr_reg_cnt; int pwr_clk_cnt; int /*<<< orphan*/ * pwr_clk_names; int /*<<< orphan*/ * pwr_reg_names; } ;
struct hdmi_bridge {struct hdmi* hdmi; } ;
struct hdmi {int /*<<< orphan*/ * pwr_clks; int /*<<< orphan*/  pixclock; int /*<<< orphan*/ * pwr_regs; TYPE_1__* pdev; struct hdmi_platform_config* config; } ;
struct drm_device {int /*<<< orphan*/  dev; } ;
struct drm_bridge {struct drm_device* dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 struct hdmi_bridge* FUNC6 (struct drm_bridge*) ; 

__attribute__((used)) static void FUNC7(struct drm_bridge *bridge)
{
	struct drm_device *dev = bridge->dev;
	struct hdmi_bridge *hdmi_bridge = FUNC6(bridge);
	struct hdmi *hdmi = hdmi_bridge->hdmi;
	const struct hdmi_platform_config *config = hdmi->config;
	int i, ret;

	FUNC4(&hdmi->pdev->dev);

	for (i = 0; i < config->pwr_reg_cnt; i++) {
		ret = FUNC5(hdmi->pwr_regs[i]);
		if (ret) {
			FUNC1(dev->dev, "failed to enable pwr regulator: %s (%d)\n",
					config->pwr_reg_names[i], ret);
		}
	}

	if (config->pwr_clk_cnt > 0) {
		FUNC0("pixclock: %lu", hdmi->pixclock);
		ret = FUNC3(hdmi->pwr_clks[0], hdmi->pixclock);
		if (ret) {
			FUNC1(dev->dev, "failed to set pixel clk: %s (%d)\n",
					config->pwr_clk_names[0], ret);
		}
	}

	for (i = 0; i < config->pwr_clk_cnt; i++) {
		ret = FUNC2(hdmi->pwr_clks[i]);
		if (ret) {
			FUNC1(dev->dev, "failed to enable pwr clk: %s (%d)\n",
					config->pwr_clk_names[i], ret);
		}
	}
}