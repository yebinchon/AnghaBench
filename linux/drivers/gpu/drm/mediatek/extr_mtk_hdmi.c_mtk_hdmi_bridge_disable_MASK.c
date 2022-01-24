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
struct mtk_hdmi {int enabled; int /*<<< orphan*/ * clk; int /*<<< orphan*/  phy; } ;
struct drm_bridge {int dummy; } ;

/* Variables and functions */
 size_t MTK_HDMI_CLK_HDMI_PIXEL ; 
 size_t MTK_HDMI_CLK_HDMI_PLL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct mtk_hdmi* FUNC1 (struct drm_bridge*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct drm_bridge *bridge)
{
	struct mtk_hdmi *hdmi = FUNC1(bridge);

	if (!hdmi->enabled)
		return;

	FUNC2(hdmi->phy);
	FUNC0(hdmi->clk[MTK_HDMI_CLK_HDMI_PIXEL]);
	FUNC0(hdmi->clk[MTK_HDMI_CLK_HDMI_PLL]);

	hdmi->enabled = false;
}