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
struct dsi_data {scalar_t__ module_id; int vdds_dsi_enabled; int /*<<< orphan*/  pll; int /*<<< orphan*/  dss; int /*<<< orphan*/  vdds_dsi_reg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  DSS_CLK_SRC_FCK ; 
 int /*<<< orphan*/  DSS_CLK_SRC_PLL1_2 ; 
 int /*<<< orphan*/  DSS_CLK_SRC_PLL2_2 ; 
 int /*<<< orphan*/  FUNC1 (struct dsi_data*) ; 
 int FUNC2 (struct dsi_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct dsi_data*) ; 
 int FUNC4 (struct dsi_data*) ; 
 int /*<<< orphan*/  FUNC5 (struct dsi_data*) ; 
 int /*<<< orphan*/  FUNC6 (struct dsi_data*,int) ; 
 int FUNC7 (struct dsi_data*) ; 
 int /*<<< orphan*/  FUNC8 (struct dsi_data*) ; 
 int /*<<< orphan*/  FUNC9 (struct dsi_data*) ; 
 int /*<<< orphan*/  FUNC10 (struct dsi_data*,int,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int FUNC15 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC16(struct dsi_data *dsi)
{
	int r;

	r = FUNC12(&dsi->pll);
	if (r)
		return r;

	r = FUNC4(dsi);
	if (r)
		goto err0;

	FUNC13(dsi->dss, dsi->module_id,
				  dsi->module_id == 0 ?
				  DSS_CLK_SRC_PLL1_2 : DSS_CLK_SRC_PLL2_2);

	FUNC0("PLL OK\n");

	if (!dsi->vdds_dsi_enabled) {
		r = FUNC15(dsi->vdds_dsi_reg);
		if (r)
			goto err1;

		dsi->vdds_dsi_enabled = true;
	}

	r = FUNC2(dsi);
	if (r)
		goto err2;

	FUNC1(dsi);

	FUNC8(dsi);
	FUNC9(dsi);

	if (1)
		FUNC1(dsi);

	r = FUNC7(dsi);
	if (r)
		goto err3;

	/* enable interface */
	FUNC10(dsi, 0, 1);
	FUNC10(dsi, 1, 1);
	FUNC10(dsi, 2, 1);
	FUNC10(dsi, 3, 1);
	FUNC6(dsi, 1);
	FUNC5(dsi);

	return 0;
err3:
	FUNC3(dsi);
err2:
	FUNC14(dsi->vdds_dsi_reg);
	dsi->vdds_dsi_enabled = false;
err1:
	FUNC13(dsi->dss, dsi->module_id, DSS_CLK_SRC_FCK);
err0:
	FUNC11(&dsi->pll);

	return r;
}