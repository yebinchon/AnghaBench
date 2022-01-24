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
typedef  enum dss_clk_source { ____Placeholder_dss_clk_source } dss_clk_source ;

/* Variables and functions */
 int DSS_CLK_SRC_FCK ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 struct dss_pll* FUNC2 (int /*<<< orphan*/ ,int) ; 
 unsigned int FUNC3 (int) ; 

__attribute__((used)) static unsigned long FUNC4(struct dispc_device *dispc)
{
	unsigned long r;
	enum dss_clk_source src;

	src = FUNC1(dispc->dss);

	if (src == DSS_CLK_SRC_FCK) {
		r = FUNC0(dispc->dss);
	} else {
		struct dss_pll *pll;
		unsigned int clkout_idx;

		pll = FUNC2(dispc->dss, src);
		clkout_idx = FUNC3(src);

		r = pll->cinfo.clkout[clkout_idx];
	}

	return r;
}