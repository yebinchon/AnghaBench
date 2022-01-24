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
struct seq_file {int dummy; } ;
struct dispc_device {int /*<<< orphan*/  dss; } ;
typedef  enum omap_channel { ____Placeholder_omap_channel } omap_channel ;
typedef  enum dss_clk_source { ____Placeholder_dss_clk_source } dss_clk_source ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dispc_device*,int,int*,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct dispc_device*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct dispc_device*,int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int) ; 
 TYPE_1__* mgr_desc ; 
 int /*<<< orphan*/  FUNC5 (struct seq_file*,char*,int /*<<< orphan*/ ,...) ; 

__attribute__((used)) static void FUNC6(struct dispc_device *dispc,
				      struct seq_file *s,
				      enum omap_channel channel)
{
	int lcd, pcd;
	enum dss_clk_source lcd_clk_src;

	FUNC5(s, "- %s -\n", mgr_desc[channel].name);

	lcd_clk_src = FUNC4(dispc->dss, channel);

	FUNC5(s, "%s clk source = %s\n", mgr_desc[channel].name,
		FUNC3(lcd_clk_src));

	FUNC0(dispc, channel, &lcd, &pcd);

	FUNC5(s, "lck\t\t%-16lulck div\t%u\n",
		FUNC1(dispc, channel), lcd);
	FUNC5(s, "pck\t\t%-16lupck div\t%u\n",
		FUNC2(dispc, channel), pcd);
}