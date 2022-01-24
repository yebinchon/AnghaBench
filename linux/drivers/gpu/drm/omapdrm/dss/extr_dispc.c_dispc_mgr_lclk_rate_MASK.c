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
struct TYPE_2__ {unsigned long* clkout; } ;
struct dss_pll {TYPE_1__ cinfo; } ;
struct dispc_device {int /*<<< orphan*/  dss; } ;
typedef  enum omap_channel { ____Placeholder_omap_channel } omap_channel ;
typedef  enum dss_clk_source { ____Placeholder_dss_clk_source } dss_clk_source ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int DSS_CLK_SRC_FCK ; 
 int FUNC1 (struct dispc_device*,int /*<<< orphan*/ ,int,int) ; 
 unsigned long FUNC2 (struct dispc_device*) ; 
 unsigned long FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 struct dss_pll* FUNC6 (int /*<<< orphan*/ ,int) ; 
 unsigned int FUNC7 (int) ; 

__attribute__((used)) static unsigned long FUNC8(struct dispc_device *dispc,
					 enum omap_channel channel)
{
	int lcd;
	unsigned long r;
	enum dss_clk_source src;

	/* for TV, LCLK rate is the FCLK rate */
	if (!FUNC5(channel))
		return FUNC2(dispc);

	src = FUNC4(dispc->dss, channel);

	if (src == DSS_CLK_SRC_FCK) {
		r = FUNC3(dispc->dss);
	} else {
		struct dss_pll *pll;
		unsigned int clkout_idx;

		pll = FUNC6(dispc->dss, src);
		clkout_idx = FUNC7(src);

		r = pll->cinfo.clkout[clkout_idx];
	}

	lcd = FUNC1(dispc, FUNC0(channel), 23, 16);

	return r / lcd;
}