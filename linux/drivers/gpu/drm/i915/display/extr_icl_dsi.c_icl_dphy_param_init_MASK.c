#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct mipi_config {int tclk_prepare_clkzero; int tclk_pre; int tclk_post; int ths_prepare_hszero; int ths_exit; int /*<<< orphan*/  tclk_prepare; int /*<<< orphan*/  ths_prepare; int /*<<< orphan*/  ths_trail; int /*<<< orphan*/  tclk_trail; } ;
struct TYPE_5__ {struct drm_device* dev; } ;
struct TYPE_6__ {TYPE_1__ base; } ;
struct intel_dsi {int dphy_reg; int dphy_data_lane_reg; TYPE_2__ base; } ;
struct TYPE_7__ {struct mipi_config* config; } ;
struct TYPE_8__ {TYPE_3__ dsi; } ;
struct drm_i915_private {TYPE_4__ vbt; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int CLK_POST_OVERRIDE ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int CLK_PREPARE_OVERRIDE ; 
 int CLK_PRE_OVERRIDE ; 
 int FUNC3 (int) ; 
 int CLK_TRAIL_OVERRIDE ; 
 int FUNC4 (int) ; 
 int CLK_ZERO_OVERRIDE ; 
 int FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 
 int FUNC7 (int) ; 
 int HS_EXIT_OVERRIDE ; 
 int FUNC8 (int) ; 
 int HS_PREPARE_OVERRIDE ; 
 int FUNC9 (int) ; 
 int HS_TRAIL_OVERRIDE ; 
 int FUNC10 (int) ; 
 int HS_ZERO_OVERRIDE ; 
 int ICL_CLK_ZERO_CNT_MAX ; 
 int ICL_EXIT_ZERO_CNT_MAX ; 
 int ICL_HS_ZERO_CNT_MAX ; 
 int ICL_PREPARE_CNT_MAX ; 
 int ICL_TCLK_POST_CNT_MAX ; 
 int ICL_TCLK_PRE_CNT_MAX ; 
 int ICL_TRAIL_CNT_MAX ; 
 int /*<<< orphan*/  FUNC11 (struct intel_dsi*) ; 
 int FUNC12 (struct intel_dsi*) ; 
 int FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct drm_i915_private* FUNC14 (struct drm_device*) ; 

__attribute__((used)) static void FUNC15(struct intel_dsi *intel_dsi)
{
	struct drm_device *dev = intel_dsi->base.base.dev;
	struct drm_i915_private *dev_priv = FUNC14(dev);
	struct mipi_config *mipi_config = dev_priv->vbt.dsi.config;
	u32 tlpx_ns;
	u32 prepare_cnt, exit_zero_cnt, clk_zero_cnt, trail_cnt;
	u32 ths_prepare_ns, tclk_trail_ns;
	u32 hs_zero_cnt;
	u32 tclk_pre_cnt, tclk_post_cnt;

	tlpx_ns = FUNC12(intel_dsi);

	tclk_trail_ns = FUNC13(mipi_config->tclk_trail, mipi_config->ths_trail);
	ths_prepare_ns = FUNC13(mipi_config->ths_prepare,
			     mipi_config->tclk_prepare);

	/*
	 * prepare cnt in escape clocks
	 * this field represents a hexadecimal value with a precision
	 * of 1.2 – i.e. the most significant bit is the integer
	 * and the least significant 2 bits are fraction bits.
	 * so, the field can represent a range of 0.25 to 1.75
	 */
	prepare_cnt = FUNC5(ths_prepare_ns * 4, tlpx_ns);
	if (prepare_cnt > ICL_PREPARE_CNT_MAX) {
		FUNC6("prepare_cnt out of range (%d)\n", prepare_cnt);
		prepare_cnt = ICL_PREPARE_CNT_MAX;
	}

	/* clk zero count in escape clocks */
	clk_zero_cnt = FUNC5(mipi_config->tclk_prepare_clkzero -
				    ths_prepare_ns, tlpx_ns);
	if (clk_zero_cnt > ICL_CLK_ZERO_CNT_MAX) {
		FUNC6("clk_zero_cnt out of range (%d)\n", clk_zero_cnt);
		clk_zero_cnt = ICL_CLK_ZERO_CNT_MAX;
	}

	/* trail cnt in escape clocks*/
	trail_cnt = FUNC5(tclk_trail_ns, tlpx_ns);
	if (trail_cnt > ICL_TRAIL_CNT_MAX) {
		FUNC6("trail_cnt out of range (%d)\n", trail_cnt);
		trail_cnt = ICL_TRAIL_CNT_MAX;
	}

	/* tclk pre count in escape clocks */
	tclk_pre_cnt = FUNC5(mipi_config->tclk_pre, tlpx_ns);
	if (tclk_pre_cnt > ICL_TCLK_PRE_CNT_MAX) {
		FUNC6("tclk_pre_cnt out of range (%d)\n", tclk_pre_cnt);
		tclk_pre_cnt = ICL_TCLK_PRE_CNT_MAX;
	}

	/* tclk post count in escape clocks */
	tclk_post_cnt = FUNC5(mipi_config->tclk_post, tlpx_ns);
	if (tclk_post_cnt > ICL_TCLK_POST_CNT_MAX) {
		FUNC6("tclk_post_cnt out of range (%d)\n", tclk_post_cnt);
		tclk_post_cnt = ICL_TCLK_POST_CNT_MAX;
	}

	/* hs zero cnt in escape clocks */
	hs_zero_cnt = FUNC5(mipi_config->ths_prepare_hszero -
				   ths_prepare_ns, tlpx_ns);
	if (hs_zero_cnt > ICL_HS_ZERO_CNT_MAX) {
		FUNC6("hs_zero_cnt out of range (%d)\n", hs_zero_cnt);
		hs_zero_cnt = ICL_HS_ZERO_CNT_MAX;
	}

	/* hs exit zero cnt in escape clocks */
	exit_zero_cnt = FUNC5(mipi_config->ths_exit, tlpx_ns);
	if (exit_zero_cnt > ICL_EXIT_ZERO_CNT_MAX) {
		FUNC6("exit_zero_cnt out of range (%d)\n", exit_zero_cnt);
		exit_zero_cnt = ICL_EXIT_ZERO_CNT_MAX;
	}

	/* clock lane dphy timings */
	intel_dsi->dphy_reg = (CLK_PREPARE_OVERRIDE |
			       FUNC2(prepare_cnt) |
			       CLK_ZERO_OVERRIDE |
			       FUNC4(clk_zero_cnt) |
			       CLK_PRE_OVERRIDE |
			       FUNC1(tclk_pre_cnt) |
			       CLK_POST_OVERRIDE |
			       FUNC0(tclk_post_cnt) |
			       CLK_TRAIL_OVERRIDE |
			       FUNC3(trail_cnt));

	/* data lanes dphy timings */
	intel_dsi->dphy_data_lane_reg = (HS_PREPARE_OVERRIDE |
					 FUNC8(prepare_cnt) |
					 HS_ZERO_OVERRIDE |
					 FUNC10(hs_zero_cnt) |
					 HS_TRAIL_OVERRIDE |
					 FUNC9(trail_cnt) |
					 HS_EXIT_OVERRIDE |
					 FUNC7(exit_zero_cnt));

	FUNC11(intel_dsi);
}