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
struct phy {int dummy; } ;
struct mtk_hdmi_phy {TYPE_1__* conf; int /*<<< orphan*/  pll; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* hdmi_phy_enable_tmds ) (struct mtk_hdmi_phy*) ;} ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 struct mtk_hdmi_phy* FUNC1 (struct phy*) ; 
 int /*<<< orphan*/  FUNC2 (struct mtk_hdmi_phy*) ; 

__attribute__((used)) static int FUNC3(struct phy *phy)
{
	struct mtk_hdmi_phy *hdmi_phy = FUNC1(phy);
	int ret;

	ret = FUNC0(hdmi_phy->pll);
	if (ret < 0)
		return ret;

	hdmi_phy->conf->hdmi_phy_enable_tmds(hdmi_phy);
	return 0;
}