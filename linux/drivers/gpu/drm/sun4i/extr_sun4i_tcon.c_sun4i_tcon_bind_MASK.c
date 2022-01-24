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
struct sunxi_engine {int /*<<< orphan*/  id; } ;
struct sun4i_tcon {struct sunxi_engine* lcd_rst; TYPE_1__* quirks; int /*<<< orphan*/  list; int /*<<< orphan*/  id; int /*<<< orphan*/  regs; struct sunxi_engine* crtc; struct sunxi_engine* lvds_pll; struct sunxi_engine* lvds_rst; struct device* dev; struct drm_device* drm; } ;
struct sun4i_drv {int /*<<< orphan*/  tcon_list; } ;
struct reset_control {int /*<<< orphan*/  id; } ;
struct drm_device {struct sun4i_drv* dev_private; } ;
struct device_node {int dummy; } ;
struct device {int /*<<< orphan*/  of_node; } ;
struct TYPE_2__ {scalar_t__ has_channel_0; scalar_t__ needs_de_be_mux; scalar_t__ has_lvds_alt; scalar_t__ supports_lvds; scalar_t__ needs_edp_reset; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct sunxi_engine*) ; 
 int FUNC1 (struct sunxi_engine*) ; 
 int /*<<< orphan*/  SUN4I_TCON0_CTL_REG ; 
 int /*<<< orphan*/  SUN4I_TCON0_CTL_SRC_SEL_MASK ; 
 int /*<<< orphan*/  SUN4I_TCON1_CTL_REG ; 
 int /*<<< orphan*/  SUN4I_TCON1_CTL_SRC_SEL_MASK ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,struct sun4i_tcon*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*) ; 
 struct sunxi_engine* FUNC5 (struct device*,char*) ; 
 struct sun4i_tcon* FUNC6 (struct device*,int,int /*<<< orphan*/ ) ; 
 struct sunxi_engine* FUNC7 (struct device*,char*) ; 
 struct sunxi_engine* FUNC8 (struct device*,char*) ; 
 struct sunxi_engine* FUNC9 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC11 (struct device*) ; 
 scalar_t__ FUNC12 (struct device_node*,char*) ; 
 struct device_node* FUNC13 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct sunxi_engine*) ; 
 int FUNC17 (struct sunxi_engine*) ; 
 int FUNC18 (struct sunxi_engine*) ; 
 struct sunxi_engine* FUNC19 (struct drm_device*,struct sunxi_engine*,struct sun4i_tcon*) ; 
 int FUNC20 (struct device*,struct sun4i_tcon*) ; 
 int /*<<< orphan*/  FUNC21 (struct sun4i_tcon*) ; 
 int FUNC22 (struct drm_device*,struct sun4i_tcon*) ; 
 int FUNC23 (struct drm_device*,struct sun4i_tcon*) ; 
 struct sunxi_engine* FUNC24 (struct sun4i_drv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (struct sun4i_tcon*) ; 
 int FUNC26 (struct device*,struct sun4i_tcon*) ; 
 int FUNC27 (struct device*,struct sun4i_tcon*) ; 
 int FUNC28 (struct device*,struct sun4i_tcon*) ; 

__attribute__((used)) static int FUNC29(struct device *dev, struct device *master,
			   void *data)
{
	struct drm_device *drm = data;
	struct sun4i_drv *drv = drm->dev_private;
	struct sunxi_engine *engine;
	struct device_node *remote;
	struct sun4i_tcon *tcon;
	struct reset_control *edp_rstc;
	bool has_lvds_rst, has_lvds_alt, can_lvds;
	int ret;

	engine = FUNC24(drv, dev->of_node);
	if (FUNC0(engine)) {
		FUNC2(dev, "Couldn't find matching engine\n");
		return -EPROBE_DEFER;
	}

	tcon = FUNC6(dev, sizeof(*tcon), GFP_KERNEL);
	if (!tcon)
		return -ENOMEM;
	FUNC3(dev, tcon);
	tcon->drm = drm;
	tcon->dev = dev;
	tcon->id = engine->id;
	tcon->quirks = FUNC11(dev);

	tcon->lcd_rst = FUNC7(dev, "lcd");
	if (FUNC0(tcon->lcd_rst)) {
		FUNC2(dev, "Couldn't get our reset line\n");
		return FUNC1(tcon->lcd_rst);
	}

	if (tcon->quirks->needs_edp_reset) {
		edp_rstc = FUNC9(dev, "edp");
		if (FUNC0(edp_rstc)) {
			FUNC2(dev, "Couldn't get edp reset line\n");
			return FUNC1(edp_rstc);
		}

		ret = FUNC17(edp_rstc);
		if (ret) {
			FUNC2(dev, "Couldn't deassert edp reset line\n");
			return ret;
		}
	}

	/* Make sure our TCON is reset */
	ret = FUNC18(tcon->lcd_rst);
	if (ret) {
		FUNC2(dev, "Couldn't deassert our reset line\n");
		return ret;
	}

	if (tcon->quirks->supports_lvds) {
		/*
		 * This can only be made optional since we've had DT
		 * nodes without the LVDS reset properties.
		 *
		 * If the property is missing, just disable LVDS, and
		 * print a warning.
		 */
		tcon->lvds_rst = FUNC8(dev, "lvds");
		if (FUNC0(tcon->lvds_rst)) {
			FUNC2(dev, "Couldn't get our reset line\n");
			return FUNC1(tcon->lvds_rst);
		} else if (tcon->lvds_rst) {
			has_lvds_rst = true;
			FUNC18(tcon->lvds_rst);
		} else {
			has_lvds_rst = false;
		}

		/*
		 * This can only be made optional since we've had DT
		 * nodes without the LVDS reset properties.
		 *
		 * If the property is missing, just disable LVDS, and
		 * print a warning.
		 */
		if (tcon->quirks->has_lvds_alt) {
			tcon->lvds_pll = FUNC5(dev, "lvds-alt");
			if (FUNC0(tcon->lvds_pll)) {
				if (FUNC1(tcon->lvds_pll) == -ENOENT) {
					has_lvds_alt = false;
				} else {
					FUNC2(dev, "Couldn't get the LVDS PLL\n");
					return FUNC1(tcon->lvds_pll);
				}
			} else {
				has_lvds_alt = true;
			}
		}

		if (!has_lvds_rst ||
		    (tcon->quirks->has_lvds_alt && !has_lvds_alt)) {
			FUNC4(dev, "Missing LVDS properties, Please upgrade your DT\n");
			FUNC4(dev, "LVDS output disabled\n");
			can_lvds = false;
		} else {
			can_lvds = true;
		}
	} else {
		can_lvds = false;
	}

	ret = FUNC26(dev, tcon);
	if (ret) {
		FUNC2(dev, "Couldn't init our TCON clocks\n");
		goto err_assert_reset;
	}

	ret = FUNC28(dev, tcon);
	if (ret) {
		FUNC2(dev, "Couldn't init our TCON regmap\n");
		goto err_free_clocks;
	}

	if (tcon->quirks->has_channel_0) {
		ret = FUNC20(dev, tcon);
		if (ret) {
			FUNC2(dev, "Couldn't create our TCON dot clock\n");
			goto err_free_clocks;
		}
	}

	ret = FUNC27(dev, tcon);
	if (ret) {
		FUNC2(dev, "Couldn't init our TCON interrupts\n");
		goto err_free_dotclock;
	}

	tcon->crtc = FUNC19(drm, engine, tcon);
	if (FUNC0(tcon->crtc)) {
		FUNC2(dev, "Couldn't create our CRTC\n");
		ret = FUNC1(tcon->crtc);
		goto err_free_dotclock;
	}

	if (tcon->quirks->has_channel_0) {
		/*
		 * If we have an LVDS panel connected to the TCON, we should
		 * just probe the LVDS connector. Otherwise, just probe RGB as
		 * we used to.
		 */
		remote = FUNC13(dev->of_node, 1, 0);
		if (FUNC12(remote, "panel-lvds"))
			if (can_lvds)
				ret = FUNC22(drm, tcon);
			else
				ret = -EINVAL;
		else
			ret = FUNC23(drm, tcon);
		FUNC14(remote);

		if (ret < 0)
			goto err_free_dotclock;
	}

	if (tcon->quirks->needs_de_be_mux) {
		/*
		 * We assume there is no dynamic muxing of backends
		 * and TCONs, so we select the backend with same ID.
		 *
		 * While dynamic selection might be interesting, since
		 * the CRTC is tied to the TCON, while the layers are
		 * tied to the backends, this means, we will need to
		 * switch between groups of layers. There might not be
		 * a way to represent this constraint in DRM.
		 */
		FUNC15(tcon->regs, SUN4I_TCON0_CTL_REG,
				   SUN4I_TCON0_CTL_SRC_SEL_MASK,
				   tcon->id);
		FUNC15(tcon->regs, SUN4I_TCON1_CTL_REG,
				   SUN4I_TCON1_CTL_SRC_SEL_MASK,
				   tcon->id);
	}

	FUNC10(&tcon->list, &drv->tcon_list);

	return 0;

err_free_dotclock:
	if (tcon->quirks->has_channel_0)
		FUNC21(tcon);
err_free_clocks:
	FUNC25(tcon);
err_assert_reset:
	FUNC16(tcon->lcd_rst);
	return ret;
}