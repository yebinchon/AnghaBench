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
struct dsi_data {int /*<<< orphan*/  dss_clk; int /*<<< orphan*/  module_id; int /*<<< orphan*/  dss; } ;
typedef  enum dss_clk_source { ____Placeholder_dss_clk_source } dss_clk_source ;

/* Variables and functions */
 int DSS_CLK_SRC_FCK ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC1 (struct dsi_data*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned long FUNC3(struct dsi_data *dsi)
{
	unsigned long r;
	enum dss_clk_source source;

	source = FUNC2(dsi->dss, dsi->module_id);
	if (source == DSS_CLK_SRC_FCK) {
		/* DSI FCLK source is DSS_CLK_FCK */
		r = FUNC0(dsi->dss_clk);
	} else {
		/* DSI FCLK source is dsi_pll_hsdiv_dsi_clk */
		r = FUNC1(dsi);
	}

	return r;
}