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
typedef  int /*<<< orphan*/  u32 ;
struct dss_device {void** lcd_clk_source; void* dispc_clk_source; void** dsi_clk_source; int /*<<< orphan*/  dss_clk; int /*<<< orphan*/  dss_clk_rate; } ;

/* Variables and functions */
 void* DSS_CLK_SRC_FCK ; 
 int /*<<< orphan*/  DSS_CONTROL ; 
 int /*<<< orphan*/  DSS_REVISION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct dss_device*,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct dss_device*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct dss_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct dss_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct dss_device*,void*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct dss_device *dss)
{
	u32 rev;
	int r;

	r = FUNC4(dss);
	if (r)
		return r;

	dss->dss_clk_rate = FUNC2(dss->dss_clk);

	/* Select DPLL */
	FUNC1(dss, DSS_CONTROL, 0, 0, 0);

	FUNC6(dss, DSS_CLK_SRC_FCK);

#ifdef CONFIG_OMAP2_DSS_VENC
	REG_FLD_MOD(dss, DSS_CONTROL, 1, 4, 4);	/* venc dac demen */
	REG_FLD_MOD(dss, DSS_CONTROL, 1, 3, 3);	/* venc clock 4x enable */
	REG_FLD_MOD(dss, DSS_CONTROL, 0, 2, 2);	/* venc clock mode = normal */
#endif
	dss->dsi_clk_source[0] = DSS_CLK_SRC_FCK;
	dss->dsi_clk_source[1] = DSS_CLK_SRC_FCK;
	dss->dispc_clk_source = DSS_CLK_SRC_FCK;
	dss->lcd_clk_source[0] = DSS_CLK_SRC_FCK;
	dss->lcd_clk_source[1] = DSS_CLK_SRC_FCK;

	rev = FUNC3(dss, DSS_REVISION);
	FUNC7("OMAP DSS rev %d.%d\n", FUNC0(rev, 7, 4), FUNC0(rev, 3, 0));

	FUNC5(dss);

	return 0;
}