#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct videomode {unsigned int pixelclock; int flags; int /*<<< orphan*/  vactive; int /*<<< orphan*/  hactive; } ;
struct TYPE_9__ {int /*<<< orphan*/  clkin; } ;
struct TYPE_7__ {TYPE_3__ pll; } ;
struct hdmi_wp_data {int dummy; } ;
struct TYPE_8__ {struct videomode vm; } ;
struct omap_hdmi {TYPE_1__ pll; struct hdmi_wp_data wp; int /*<<< orphan*/  output; TYPE_2__ cfg; int /*<<< orphan*/  core; int /*<<< orphan*/  phy; } ;
struct dss_pll_clock_info {int /*<<< orphan*/ * clkout; int /*<<< orphan*/  clkdco; int /*<<< orphan*/  member_0; } ;

/* Variables and functions */
 int DISPLAY_FLAGS_DOUBLECLK ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int EIO ; 
 int /*<<< orphan*/  HDMI_IRQ_CORE ; 
 int HDMI_IRQ_LINK_CONNECT ; 
 int HDMI_IRQ_LINK_DISCONNECT ; 
 int /*<<< orphan*/  HDMI_PHYPWRCMD_LDOON ; 
 int /*<<< orphan*/  HDMI_PHYPWRCMD_OFF ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int /*<<< orphan*/ ,unsigned int,struct dss_pll_clock_info*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int FUNC7 (TYPE_3__*) ; 
 int FUNC8 (TYPE_3__*,struct dss_pll_clock_info*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,struct hdmi_wp_data*,TYPE_2__*) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct omap_hdmi*) ; 
 int FUNC12 (struct omap_hdmi*) ; 
 int /*<<< orphan*/  FUNC13 (struct hdmi_wp_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct hdmi_wp_data*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct hdmi_wp_data*,int /*<<< orphan*/ ) ; 
 int FUNC16 (struct hdmi_wp_data*,int /*<<< orphan*/ ) ; 
 int FUNC17 (struct hdmi_wp_data*) ; 

__attribute__((used)) static int FUNC18(struct omap_hdmi *hdmi)
{
	int r;
	const struct videomode *vm;
	struct hdmi_wp_data *wp = &hdmi->wp;
	struct dss_pll_clock_info hdmi_cinfo = { 0 };
	unsigned int pc;

	r = FUNC12(hdmi);
	if (r)
		return r;

	/* disable and clear irqs */
	FUNC13(wp, ~HDMI_IRQ_CORE);
	FUNC15(wp, ~HDMI_IRQ_CORE);

	vm = &hdmi->cfg.vm;

	FUNC0("hdmi_power_on hactive= %d vactive = %d\n", vm->hactive,
	       vm->vactive);

	pc = vm->pixelclock;
	if (vm->flags & DISPLAY_FLAGS_DOUBLECLK)
		pc *= 2;

	/* DSS_HDMI_TCLK is bitclk / 10 */
	pc *= 10;

	FUNC5(&hdmi->pll.pll, FUNC2(hdmi->pll.pll.clkin),
		pc, &hdmi_cinfo);

	r = FUNC7(&hdmi->pll.pll);
	if (r) {
		FUNC1("Failed to enable PLL\n");
		goto err_pll_enable;
	}

	r = FUNC8(&hdmi->pll.pll, &hdmi_cinfo);
	if (r) {
		FUNC1("Failed to configure PLL\n");
		goto err_pll_cfg;
	}

	r = FUNC10(&hdmi->phy, hdmi_cinfo.clkdco,
		hdmi_cinfo.clkout[0]);
	if (r) {
		FUNC0("Failed to configure PHY\n");
		goto err_phy_cfg;
	}

	r = FUNC16(wp, HDMI_PHYPWRCMD_LDOON);
	if (r)
		goto err_phy_pwr;

	FUNC9(&hdmi->core, &hdmi->wp, &hdmi->cfg);

	r = FUNC4(&hdmi->output);
	if (r)
		goto err_mgr_enable;

	r = FUNC17(&hdmi->wp);
	if (r)
		goto err_vid_enable;

	FUNC14(wp,
		HDMI_IRQ_LINK_CONNECT | HDMI_IRQ_LINK_DISCONNECT);

	return 0;

err_vid_enable:
	FUNC3(&hdmi->output);
err_mgr_enable:
	FUNC16(&hdmi->wp, HDMI_PHYPWRCMD_OFF);
err_phy_pwr:
err_phy_cfg:
err_pll_cfg:
	FUNC6(&hdmi->pll.pll);
err_pll_enable:
	FUNC11(hdmi);
	return -EIO;
}