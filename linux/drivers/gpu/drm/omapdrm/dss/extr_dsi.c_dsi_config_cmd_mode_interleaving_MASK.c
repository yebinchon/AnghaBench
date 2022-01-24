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
typedef  int /*<<< orphan*/  u32 ;
struct videomode {int hactive; } ;
struct TYPE_2__ {int* mX; } ;
struct dsi_data {int num_lanes_used; TYPE_1__ user_dsi_cinfo; int /*<<< orphan*/  pix_fmt; struct videomode vm; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  DSI_CLK_CTRL ; 
 int /*<<< orphan*/  DSI_CLK_TIMING ; 
 int /*<<< orphan*/  DSI_CTRL ; 
 int /*<<< orphan*/  DSI_DSIPHY_CFG0 ; 
 int /*<<< orphan*/  DSI_DSIPHY_CFG1 ; 
 int /*<<< orphan*/  DSI_VM_TIMING1 ; 
 int /*<<< orphan*/  DSI_VM_TIMING4 ; 
 int /*<<< orphan*/  DSI_VM_TIMING5 ; 
 int /*<<< orphan*/  DSI_VM_TIMING6 ; 
 int /*<<< orphan*/  DSI_VM_TIMING7 ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int,int,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int,int) ; 
 size_t HSDIV_DSI ; 
 int FUNC4 (int,int,int,int,int,int,int) ; 
 int FUNC5 (int,int,int,int,int) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct dsi_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct dsi_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct dsi_data *dsi)
{
	int blanking_mode;
	int hfp_blanking_mode, hbp_blanking_mode, hsa_blanking_mode;
	int hsa, hfp, hbp, width_bytes, bllp, lp_clk_div;
	int ddr_clk_pre, ddr_clk_post, enter_hs_mode_lat, exit_hs_mode_lat;
	int tclk_trail, ths_exit, exiths_clk;
	bool ddr_alwon;
	const struct videomode *vm = &dsi->vm;
	int bpp = FUNC6(dsi->pix_fmt);
	int ndl = dsi->num_lanes_used - 1;
	int dsi_fclk_hsdiv = dsi->user_dsi_cinfo.mX[HSDIV_DSI] + 1;
	int hsa_interleave_hs = 0, hsa_interleave_lp = 0;
	int hfp_interleave_hs = 0, hfp_interleave_lp = 0;
	int hbp_interleave_hs = 0, hbp_interleave_lp = 0;
	int bl_interleave_hs = 0, bl_interleave_lp = 0;
	u32 r;

	r = FUNC7(dsi, DSI_CTRL);
	blanking_mode = FUNC2(r, 20, 20);
	hfp_blanking_mode = FUNC2(r, 21, 21);
	hbp_blanking_mode = FUNC2(r, 22, 22);
	hsa_blanking_mode = FUNC2(r, 23, 23);

	r = FUNC7(dsi, DSI_VM_TIMING1);
	hbp = FUNC2(r, 11, 0);
	hfp = FUNC2(r, 23, 12);
	hsa = FUNC2(r, 31, 24);

	r = FUNC7(dsi, DSI_CLK_TIMING);
	ddr_clk_post = FUNC2(r, 7, 0);
	ddr_clk_pre = FUNC2(r, 15, 8);

	r = FUNC7(dsi, DSI_VM_TIMING7);
	exit_hs_mode_lat = FUNC2(r, 15, 0);
	enter_hs_mode_lat = FUNC2(r, 31, 16);

	r = FUNC7(dsi, DSI_CLK_CTRL);
	lp_clk_div = FUNC2(r, 12, 0);
	ddr_alwon = FUNC2(r, 13, 13);

	r = FUNC7(dsi, DSI_DSIPHY_CFG0);
	ths_exit = FUNC2(r, 7, 0);

	r = FUNC7(dsi, DSI_DSIPHY_CFG1);
	tclk_trail = FUNC2(r, 15, 8);

	exiths_clk = ths_exit + tclk_trail;

	width_bytes = FUNC0(vm->hactive * bpp, 8);
	bllp = hbp + hfp + hsa + FUNC0(width_bytes + 6, ndl);

	if (!hsa_blanking_mode) {
		hsa_interleave_hs = FUNC4(hsa, ddr_alwon,
					enter_hs_mode_lat, exit_hs_mode_lat,
					exiths_clk, ddr_clk_pre, ddr_clk_post);
		hsa_interleave_lp = FUNC5(hsa,
					enter_hs_mode_lat, exit_hs_mode_lat,
					lp_clk_div, dsi_fclk_hsdiv);
	}

	if (!hfp_blanking_mode) {
		hfp_interleave_hs = FUNC4(hfp, ddr_alwon,
					enter_hs_mode_lat, exit_hs_mode_lat,
					exiths_clk, ddr_clk_pre, ddr_clk_post);
		hfp_interleave_lp = FUNC5(hfp,
					enter_hs_mode_lat, exit_hs_mode_lat,
					lp_clk_div, dsi_fclk_hsdiv);
	}

	if (!hbp_blanking_mode) {
		hbp_interleave_hs = FUNC4(hbp, ddr_alwon,
					enter_hs_mode_lat, exit_hs_mode_lat,
					exiths_clk, ddr_clk_pre, ddr_clk_post);

		hbp_interleave_lp = FUNC5(hbp,
					enter_hs_mode_lat, exit_hs_mode_lat,
					lp_clk_div, dsi_fclk_hsdiv);
	}

	if (!blanking_mode) {
		bl_interleave_hs = FUNC4(bllp, ddr_alwon,
					enter_hs_mode_lat, exit_hs_mode_lat,
					exiths_clk, ddr_clk_pre, ddr_clk_post);

		bl_interleave_lp = FUNC5(bllp,
					enter_hs_mode_lat, exit_hs_mode_lat,
					lp_clk_div, dsi_fclk_hsdiv);
	}

	FUNC1("DSI HS interleaving(TXBYTECLKHS) HSA %d, HFP %d, HBP %d, BLLP %d\n",
		hsa_interleave_hs, hfp_interleave_hs, hbp_interleave_hs,
		bl_interleave_hs);

	FUNC1("DSI LP interleaving(bytes) HSA %d, HFP %d, HBP %d, BLLP %d\n",
		hsa_interleave_lp, hfp_interleave_lp, hbp_interleave_lp,
		bl_interleave_lp);

	r = FUNC7(dsi, DSI_VM_TIMING4);
	r = FUNC3(r, hsa_interleave_hs, 23, 16);
	r = FUNC3(r, hfp_interleave_hs, 15, 8);
	r = FUNC3(r, hbp_interleave_hs, 7, 0);
	FUNC8(dsi, DSI_VM_TIMING4, r);

	r = FUNC7(dsi, DSI_VM_TIMING5);
	r = FUNC3(r, hsa_interleave_lp, 23, 16);
	r = FUNC3(r, hfp_interleave_lp, 15, 8);
	r = FUNC3(r, hbp_interleave_lp, 7, 0);
	FUNC8(dsi, DSI_VM_TIMING5, r);

	r = FUNC7(dsi, DSI_VM_TIMING6);
	r = FUNC3(r, bl_interleave_hs, 31, 15);
	r = FUNC3(r, bl_interleave_lp, 16, 0);
	FUNC8(dsi, DSI_VM_TIMING6, r);
}