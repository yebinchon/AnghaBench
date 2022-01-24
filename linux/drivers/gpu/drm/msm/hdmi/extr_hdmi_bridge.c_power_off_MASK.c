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
struct hdmi_platform_config {int pwr_clk_cnt; int pwr_reg_cnt; int /*<<< orphan*/ * pwr_reg_names; } ;
struct hdmi_bridge {struct hdmi* hdmi; } ;
struct hdmi {TYPE_1__* pdev; int /*<<< orphan*/ * pwr_regs; int /*<<< orphan*/ * pwr_clks; struct hdmi_platform_config* config; } ;
struct drm_device {int /*<<< orphan*/  dev; } ;
struct drm_bridge {struct drm_device* dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 struct hdmi_bridge* FUNC5 (struct drm_bridge*) ; 

__attribute__((used)) static void FUNC6(struct drm_bridge *bridge)
{
	struct drm_device *dev = bridge->dev;
	struct hdmi_bridge *hdmi_bridge = FUNC5(bridge);
	struct hdmi *hdmi = hdmi_bridge->hdmi;
	const struct hdmi_platform_config *config = hdmi->config;
	int i, ret;

	/* TODO do we need to wait for final vblank somewhere before
	 * cutting the clocks?
	 */
	FUNC2(16 + 4);

	for (i = 0; i < config->pwr_clk_cnt; i++)
		FUNC1(hdmi->pwr_clks[i]);

	for (i = 0; i < config->pwr_reg_cnt; i++) {
		ret = FUNC4(hdmi->pwr_regs[i]);
		if (ret) {
			FUNC0(dev->dev, "failed to disable pwr regulator: %s (%d)\n",
					config->pwr_reg_names[i], ret);
		}
	}

	FUNC3(&hdmi->pdev->dev);
}