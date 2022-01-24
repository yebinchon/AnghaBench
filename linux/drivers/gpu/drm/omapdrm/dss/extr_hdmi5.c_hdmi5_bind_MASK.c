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
struct omap_hdmi {int /*<<< orphan*/  pll; int /*<<< orphan*/  debugfs; int /*<<< orphan*/  wp; int /*<<< orphan*/  pdev; struct dss_device* dss; } ;
struct dss_device {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 struct omap_hdmi* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct dss_device*,char*,int /*<<< orphan*/ ,struct omap_hdmi*) ; 
 struct dss_device* FUNC3 (struct device*) ; 
 int FUNC4 (struct omap_hdmi*) ; 
 int /*<<< orphan*/  hdmi_dump_regs ; 
 int FUNC5 (struct dss_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct device *dev, struct device *master, void *data)
{
	struct dss_device *dss = FUNC3(master);
	struct omap_hdmi *hdmi = FUNC1(dev);
	int r;

	hdmi->dss = dss;

	r = FUNC5(dss, hdmi->pdev, &hdmi->pll, &hdmi->wp);
	if (r)
		return r;

	r = FUNC4(hdmi);
	if (r) {
		FUNC0("Registering HDMI audio failed %d\n", r);
		goto err_pll_uninit;
	}

	hdmi->debugfs = FUNC2(dss, "hdmi", hdmi_dump_regs,
						hdmi);

	return 0;

err_pll_uninit:
	FUNC6(&hdmi->pll);
	return r;
}