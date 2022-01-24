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
struct omap_hdmi {int /*<<< orphan*/  pll; int /*<<< orphan*/  core; int /*<<< orphan*/  debugfs; int /*<<< orphan*/  wp; int /*<<< orphan*/  pdev; struct dss_device* dss; } ;
struct dss_device {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct omap_hdmi* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct dss_device*,char*,int /*<<< orphan*/ ,struct omap_hdmi*) ; 
 struct dss_device* FUNC3 (struct device*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (struct omap_hdmi*) ; 
 int /*<<< orphan*/  hdmi_dump_regs ; 
 int FUNC7 (struct dss_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (struct omap_hdmi*) ; 
 int /*<<< orphan*/  FUNC10 (struct omap_hdmi*) ; 

__attribute__((used)) static int FUNC11(struct device *dev, struct device *master, void *data)
{
	struct dss_device *dss = FUNC3(master);
	struct omap_hdmi *hdmi = FUNC1(dev);
	int r;

	hdmi->dss = dss;

	r = FUNC9(hdmi);
	if (r)
		return r;

	r = FUNC7(dss, hdmi->pdev, &hdmi->pll, &hdmi->wp);
	if (r)
		goto err_runtime_put;

	r = FUNC4(hdmi->pdev, &hdmi->core, &hdmi->wp);
	if (r)
		goto err_pll_uninit;

	r = FUNC6(hdmi);
	if (r) {
		FUNC0("Registering HDMI audio failed\n");
		goto err_cec_uninit;
	}

	hdmi->debugfs = FUNC2(dss, "hdmi", hdmi_dump_regs,
					       hdmi);

	FUNC10(hdmi);

	return 0;

err_cec_uninit:
	FUNC5(&hdmi->core);
err_pll_uninit:
	FUNC8(&hdmi->pll);
err_runtime_put:
	FUNC10(hdmi);
	return r;
}