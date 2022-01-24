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
typedef  int u16 ;
struct dispc_device {int core_clk_rate; } ;
typedef  enum omap_channel { ____Placeholder_omap_channel } omap_channel ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FEAT_CORE_CLK_DIV ; 
 int FUNC2 (int,int,int) ; 
 int OMAP_DSS_CHANNEL_LCD ; 
 int FUNC3 (struct dispc_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct dispc_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct dispc_device*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC6(struct dispc_device *dispc,
				      enum omap_channel channel, u16 lck_div,
				      u16 pck_div)
{
	FUNC0(lck_div < 1);
	FUNC0(pck_div < 1);

	FUNC5(dispc, FUNC1(channel),
			FUNC2(lck_div, 23, 16) | FUNC2(pck_div, 7, 0));

	if (!FUNC4(dispc, FEAT_CORE_CLK_DIV) &&
			channel == OMAP_DSS_CHANNEL_LCD)
		dispc->core_clk_rate = FUNC3(dispc) / lck_div;
}