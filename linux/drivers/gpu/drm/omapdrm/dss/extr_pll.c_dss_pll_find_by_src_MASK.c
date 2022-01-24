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
struct dss_pll {int dummy; } ;
struct dss_device {int dummy; } ;
typedef  enum dss_clk_source { ____Placeholder_dss_clk_source } dss_clk_source ;

/* Variables and functions */
#define  DSS_CLK_SRC_FCK 135 
#define  DSS_CLK_SRC_HDMI_PLL 134 
#define  DSS_CLK_SRC_PLL1_1 133 
#define  DSS_CLK_SRC_PLL1_2 132 
#define  DSS_CLK_SRC_PLL1_3 131 
#define  DSS_CLK_SRC_PLL2_1 130 
#define  DSS_CLK_SRC_PLL2_2 129 
#define  DSS_CLK_SRC_PLL2_3 128 
 struct dss_pll* FUNC0 (struct dss_device*,char*) ; 

struct dss_pll *FUNC1(struct dss_device *dss,
				    enum dss_clk_source src)
{
	struct dss_pll *pll;

	switch (src) {
	default:
	case DSS_CLK_SRC_FCK:
		return NULL;

	case DSS_CLK_SRC_HDMI_PLL:
		return FUNC0(dss, "hdmi");

	case DSS_CLK_SRC_PLL1_1:
	case DSS_CLK_SRC_PLL1_2:
	case DSS_CLK_SRC_PLL1_3:
		pll = FUNC0(dss, "dsi0");
		if (!pll)
			pll = FUNC0(dss, "video0");
		return pll;

	case DSS_CLK_SRC_PLL2_1:
	case DSS_CLK_SRC_PLL2_2:
	case DSS_CLK_SRC_PLL2_3:
		pll = FUNC0(dss, "dsi1");
		if (!pll)
			pll = FUNC0(dss, "video1");
		return pll;
	}
}