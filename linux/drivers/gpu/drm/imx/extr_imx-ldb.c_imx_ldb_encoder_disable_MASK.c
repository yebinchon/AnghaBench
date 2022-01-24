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
struct imx_ldb_channel {int /*<<< orphan*/  panel; struct imx_ldb* ldb; } ;
struct imx_ldb {int ldb_ctrl; int /*<<< orphan*/  dev; int /*<<< orphan*/ * clk_parent; int /*<<< orphan*/ * clk_sel; struct imx_ldb_channel* channel; int /*<<< orphan*/  regmap; struct bus_mux* lvds_mux; int /*<<< orphan*/ * clk; } ;
struct drm_encoder {int dummy; } ;
struct bus_mux {int mask; int shift; int /*<<< orphan*/  reg; } ;

/* Variables and functions */
 int /*<<< orphan*/  IOMUXC_GPR2 ; 
 int LDB_CH0_MODE_EN_MASK ; 
 int LDB_CH1_MODE_EN_MASK ; 
 int LDB_SPLIT_MODE_EN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct imx_ldb_channel* FUNC5 (struct drm_encoder*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC8(struct drm_encoder *encoder)
{
	struct imx_ldb_channel *imx_ldb_ch = FUNC5(encoder);
	struct imx_ldb *ldb = imx_ldb_ch->ldb;
	int mux, ret;

	FUNC3(imx_ldb_ch->panel);

	if (imx_ldb_ch == &ldb->channel[0])
		ldb->ldb_ctrl &= ~LDB_CH0_MODE_EN_MASK;
	else if (imx_ldb_ch == &ldb->channel[1])
		ldb->ldb_ctrl &= ~LDB_CH1_MODE_EN_MASK;

	FUNC7(ldb->regmap, IOMUXC_GPR2, ldb->ldb_ctrl);

	if (ldb->ldb_ctrl & LDB_SPLIT_MODE_EN) {
		FUNC0(ldb->clk[0]);
		FUNC0(ldb->clk[1]);
	}

	if (ldb->lvds_mux) {
		const struct bus_mux *lvds_mux = NULL;

		if (imx_ldb_ch == &ldb->channel[0])
			lvds_mux = &ldb->lvds_mux[0];
		else if (imx_ldb_ch == &ldb->channel[1])
			lvds_mux = &ldb->lvds_mux[1];

		FUNC6(ldb->regmap, lvds_mux->reg, &mux);
		mux &= lvds_mux->mask;
		mux >>= lvds_mux->shift;
	} else {
		mux = (imx_ldb_ch == &ldb->channel[0]) ? 0 : 1;
	}

	/* set display clock mux back to original input clock */
	ret = FUNC1(ldb->clk_sel[mux], ldb->clk_parent[mux]);
	if (ret)
		FUNC2(ldb->dev,
			"unable to set di%d parent clock to original parent\n",
			mux);

	FUNC4(imx_ldb_ch->panel);
}