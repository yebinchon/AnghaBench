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
struct omap_dss_device {int /*<<< orphan*/  dispc_channel; } ;
struct dpi_data {int /*<<< orphan*/  lock; scalar_t__ vdds_dsi_reg; TYPE_1__* dss; scalar_t__ pll; struct omap_dss_device output; int /*<<< orphan*/  id; } ;
struct TYPE_2__ {int /*<<< orphan*/  dispc; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dpi_data*) ; 
 struct dpi_data* FUNC3 (struct omap_dss_device*) ; 
 int FUNC4 (struct dpi_data*) ; 
 int FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct omap_dss_device*) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__) ; 
 int FUNC13 (scalar_t__) ; 

__attribute__((used)) static void FUNC14(struct omap_dss_device *dssdev)
{
	struct dpi_data *dpi = FUNC3(dssdev);
	struct omap_dss_device *out = &dpi->output;
	int r;

	FUNC10(&dpi->lock);

	if (dpi->vdds_dsi_reg) {
		r = FUNC13(dpi->vdds_dsi_reg);
		if (r)
			goto err_reg_enable;
	}

	r = FUNC0(dpi->dss->dispc);
	if (r)
		goto err_get_dispc;

	r = FUNC5(dpi->dss, dpi->id, out->dispc_channel);
	if (r)
		goto err_src_sel;

	if (dpi->pll) {
		r = FUNC8(dpi->pll);
		if (r)
			goto err_pll_init;
	}

	r = FUNC4(dpi);
	if (r)
		goto err_set_mode;

	FUNC2(dpi);

	FUNC9(2);

	r = FUNC6(&dpi->output);
	if (r)
		goto err_mgr_enable;

	FUNC11(&dpi->lock);

	return;

err_mgr_enable:
err_set_mode:
	if (dpi->pll)
		FUNC7(dpi->pll);
err_pll_init:
err_src_sel:
	FUNC1(dpi->dss->dispc);
err_get_dispc:
	if (dpi->vdds_dsi_reg)
		FUNC12(dpi->vdds_dsi_reg);
err_reg_enable:
	FUNC11(&dpi->lock);
}