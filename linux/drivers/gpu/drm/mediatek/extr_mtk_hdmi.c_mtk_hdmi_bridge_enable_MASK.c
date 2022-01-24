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
struct mtk_hdmi {int enabled; int /*<<< orphan*/  mode; int /*<<< orphan*/  phy; int /*<<< orphan*/ * clk; } ;
struct drm_bridge {int dummy; } ;

/* Variables and functions */
 size_t MTK_HDMI_CLK_HDMI_PIXEL ; 
 size_t MTK_HDMI_CLK_HDMI_PLL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct mtk_hdmi* FUNC1 (struct drm_bridge*) ; 
 int /*<<< orphan*/  FUNC2 (struct mtk_hdmi*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct mtk_hdmi*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct drm_bridge *bridge)
{
	struct mtk_hdmi *hdmi = FUNC1(bridge);

	FUNC2(hdmi, &hdmi->mode);
	FUNC0(hdmi->clk[MTK_HDMI_CLK_HDMI_PLL]);
	FUNC0(hdmi->clk[MTK_HDMI_CLK_HDMI_PIXEL]);
	FUNC4(hdmi->phy);
	FUNC3(hdmi, &hdmi->mode);

	hdmi->enabled = true;
}