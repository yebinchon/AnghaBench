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
struct psb_offset {int /*<<< orphan*/  status; int /*<<< orphan*/  surf; int /*<<< orphan*/  linoff; int /*<<< orphan*/  conf; int /*<<< orphan*/  cntr; int /*<<< orphan*/  dpll; } ;
struct mdfld_dsi_pkg_sender {int pipe; int /*<<< orphan*/  lock; int /*<<< orphan*/  mipi_cmd_len_reg; int /*<<< orphan*/  mipi_cmd_addr_reg; int /*<<< orphan*/  mipi_data_len_reg; int /*<<< orphan*/  mipi_data_addr_reg; int /*<<< orphan*/  mipi_gen_fifo_stat_reg; int /*<<< orphan*/  mipi_hs_gen_ctrl_reg; int /*<<< orphan*/  mipi_lp_gen_ctrl_reg; int /*<<< orphan*/  mipi_hs_gen_data_reg; int /*<<< orphan*/  mipi_lp_gen_data_reg; int /*<<< orphan*/  mipi_intr_stat_reg; int /*<<< orphan*/  pipestat_reg; int /*<<< orphan*/  dspsurf_reg; int /*<<< orphan*/  dsplinoff_reg; int /*<<< orphan*/  pipeconf_reg; int /*<<< orphan*/  dspcntr_reg; int /*<<< orphan*/  dpll_reg; int /*<<< orphan*/  status; scalar_t__ panel_mode; scalar_t__ pkg_num; struct mdfld_dsi_connector* dsi_connector; struct drm_device* dev; } ;
struct mdfld_dsi_connector {struct mdfld_dsi_pkg_sender* pkg_sender; } ;
struct mdfld_dsi_config {struct drm_device* dev; } ;
struct drm_psb_private {struct psb_offset* regmap; } ;
struct drm_device {struct drm_psb_private* dev_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (struct mdfld_dsi_pkg_sender*) ; 
 int /*<<< orphan*/  MDFLD_DSI_PKG_SENDER_FREE ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int PASS_FROM_SPHY_TO_AFE ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int) ; 
 int SEL_FLOPPED_HSTX ; 
 scalar_t__ TC35876X ; 
 struct mdfld_dsi_pkg_sender* FUNC15 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct mdfld_dsi_config*,int) ; 
 struct mdfld_dsi_config* FUNC17 (struct mdfld_dsi_connector*) ; 
 scalar_t__ FUNC18 (struct drm_device*,int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 

int FUNC20(struct mdfld_dsi_connector *dsi_connector,
								int pipe)
{
	struct mdfld_dsi_pkg_sender *pkg_sender;
	struct mdfld_dsi_config *dsi_config =
				FUNC17(dsi_connector);
	struct drm_device *dev = dsi_config->dev;
	struct drm_psb_private *dev_priv = dev->dev_private;
	const struct psb_offset *map = &dev_priv->regmap[pipe];
	u32 mipi_val = 0;

	if (!dsi_connector) {
		FUNC0("Invalid parameter\n");
		return -EINVAL;
	}

	pkg_sender = dsi_connector->pkg_sender;

	if (!pkg_sender || FUNC1(pkg_sender)) {
		pkg_sender = FUNC15(sizeof(struct mdfld_dsi_pkg_sender),
								GFP_KERNEL);
		if (!pkg_sender) {
			FUNC0("Create DSI pkg sender failed\n");
			return -ENOMEM;
		}
		dsi_connector->pkg_sender = (void *)pkg_sender;
	}

	pkg_sender->dev = dev;
	pkg_sender->dsi_connector = dsi_connector;
	pkg_sender->pipe = pipe;
	pkg_sender->pkg_num = 0;
	pkg_sender->panel_mode = 0;
	pkg_sender->status = MDFLD_DSI_PKG_SENDER_FREE;

	/*init regs*/
	/* FIXME: should just copy the regmap ptr ? */
	pkg_sender->dpll_reg = map->dpll;
	pkg_sender->dspcntr_reg = map->cntr;
	pkg_sender->pipeconf_reg = map->conf;
	pkg_sender->dsplinoff_reg = map->linoff;
	pkg_sender->dspsurf_reg = map->surf;
	pkg_sender->pipestat_reg = map->status;

	pkg_sender->mipi_intr_stat_reg = FUNC9(pipe);
	pkg_sender->mipi_lp_gen_data_reg = FUNC11(pipe);
	pkg_sender->mipi_hs_gen_data_reg = FUNC8(pipe);
	pkg_sender->mipi_lp_gen_ctrl_reg = FUNC10(pipe);
	pkg_sender->mipi_hs_gen_ctrl_reg = FUNC7(pipe);
	pkg_sender->mipi_gen_fifo_stat_reg = FUNC6(pipe);
	pkg_sender->mipi_data_addr_reg = FUNC4(pipe);
	pkg_sender->mipi_data_len_reg = FUNC5(pipe);
	pkg_sender->mipi_cmd_addr_reg = FUNC2(pipe);
	pkg_sender->mipi_cmd_len_reg = FUNC3(pipe);

	/*init lock*/
	FUNC19(&pkg_sender->lock);

	if (FUNC18(dev, pipe) != TC35876X) {
		/**
		 * For video mode, don't enable DPI timing output here,
		 * will init the DPI timing output during mode setting.
		 */
		mipi_val = PASS_FROM_SPHY_TO_AFE | SEL_FLOPPED_HSTX;

		if (pipe == 0)
			mipi_val |= 0x2;

		FUNC14(FUNC12(pipe), mipi_val);
		FUNC13(FUNC12(pipe));

		/* do dsi controller init */
		FUNC16(dsi_config, pipe);
	}

	return 0;
}