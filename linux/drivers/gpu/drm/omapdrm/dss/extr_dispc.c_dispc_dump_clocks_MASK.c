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
struct seq_file {int dummy; } ;
struct dispc_device {int /*<<< orphan*/  dss; } ;
typedef  enum dss_clk_source { ____Placeholder_dss_clk_source } dss_clk_source ;

/* Variables and functions */
 int /*<<< orphan*/  DISPC_DIVISOR ; 
 int /*<<< orphan*/  FEAT_CORE_CLK_DIV ; 
 int /*<<< orphan*/  FEAT_MGR_LCD2 ; 
 int /*<<< orphan*/  FEAT_MGR_LCD3 ; 
 int FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  OMAP_DSS_CHANNEL_LCD ; 
 int /*<<< orphan*/  OMAP_DSS_CHANNEL_LCD2 ; 
 int /*<<< orphan*/  OMAP_DSS_CHANNEL_LCD3 ; 
 int /*<<< orphan*/  FUNC1 (struct dispc_device*,struct seq_file*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct dispc_device*) ; 
 scalar_t__ FUNC3 (struct dispc_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct dispc_device*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct dispc_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct dispc_device*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct seq_file*,char*,...) ; 

void FUNC10(struct dispc_device *dispc, struct seq_file *s)
{
	enum dss_clk_source dispc_clk_src;
	int lcd;
	u32 l;

	if (FUNC5(dispc))
		return;

	FUNC9(s, "- DISPC -\n");

	dispc_clk_src = FUNC8(dispc->dss);
	FUNC9(s, "dispc fclk source = %s\n",
			FUNC7(dispc_clk_src));

	FUNC9(s, "fck\t\t%-16lu\n", FUNC2(dispc));

	if (FUNC3(dispc, FEAT_CORE_CLK_DIV)) {
		FUNC9(s, "- DISPC-CORE-CLK -\n");
		l = FUNC4(dispc, DISPC_DIVISOR);
		lcd = FUNC0(l, 23, 16);

		FUNC9(s, "lck\t\t%-16lulck div\t%u\n",
				(FUNC2(dispc)/lcd), lcd);
	}

	FUNC1(dispc, s, OMAP_DSS_CHANNEL_LCD);

	if (FUNC3(dispc, FEAT_MGR_LCD2))
		FUNC1(dispc, s, OMAP_DSS_CHANNEL_LCD2);
	if (FUNC3(dispc, FEAT_MGR_LCD3))
		FUNC1(dispc, s, OMAP_DSS_CHANNEL_LCD3);

	FUNC6(dispc);
}