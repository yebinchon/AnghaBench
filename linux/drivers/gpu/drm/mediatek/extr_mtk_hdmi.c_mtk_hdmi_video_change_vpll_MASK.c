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
typedef  unsigned long u32 ;
struct mtk_hdmi {int /*<<< orphan*/  dev; int /*<<< orphan*/ * clk; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned long,int) ; 
 size_t MTK_HDMI_CLK_HDMI_PLL ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,unsigned long,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (struct mtk_hdmi*) ; 
 int /*<<< orphan*/  FUNC7 (struct mtk_hdmi*) ; 

__attribute__((used)) static int FUNC8(struct mtk_hdmi *hdmi, u32 clock)
{
	unsigned long rate;
	int ret;

	/* The DPI driver already should have set TVDPLL to the correct rate */
	ret = FUNC2(hdmi->clk[MTK_HDMI_CLK_HDMI_PLL], clock);
	if (ret) {
		FUNC4(hdmi->dev, "Failed to set PLL to %u Hz: %d\n", clock,
			ret);
		return ret;
	}

	rate = FUNC1(hdmi->clk[MTK_HDMI_CLK_HDMI_PLL]);

	if (FUNC0(rate, 1000) != FUNC0(clock, 1000))
		FUNC5(hdmi->dev, "Want PLL %u Hz, got %lu Hz\n", clock,
			 rate);
	else
		FUNC3(hdmi->dev, "Want PLL %u Hz, got %lu Hz\n", clock, rate);

	FUNC6(hdmi);
	FUNC7(hdmi);
	return 0;
}