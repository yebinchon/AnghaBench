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
typedef  int u8 ;
struct dw_hdmi_phy_data {int gen; } ;
struct TYPE_2__ {struct dw_hdmi_phy_data* data; } ;
struct dw_hdmi {int /*<<< orphan*/  dev; TYPE_1__ phy; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int /*<<< orphan*/  HDMI_PHY_STAT0 ; 
 int HDMI_PHY_TX_PHY_LOCK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct dw_hdmi*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct dw_hdmi*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct dw_hdmi*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct dw_hdmi*,int) ; 
 int FUNC6 (struct dw_hdmi*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,int) ; 

__attribute__((used)) static int FUNC8(struct dw_hdmi *hdmi)
{
	const struct dw_hdmi_phy_data *phy = hdmi->phy.data;
	unsigned int i;
	u8 val;

	if (phy->gen == 1) {
		FUNC2(hdmi, false);

		/* Toggle TMDS enable. */
		FUNC3(hdmi, 0);
		FUNC3(hdmi, 1);
		return 0;
	}

	FUNC5(hdmi, 1);
	FUNC4(hdmi, 0);

	/* Wait for PHY PLL lock */
	for (i = 0; i < 5; ++i) {
		val = FUNC6(hdmi, HDMI_PHY_STAT0) & HDMI_PHY_TX_PHY_LOCK;
		if (val)
			break;

		FUNC7(1000, 2000);
	}

	if (!val) {
		FUNC1(hdmi->dev, "PHY PLL failed to lock\n");
		return -ETIMEDOUT;
	}

	FUNC0(hdmi->dev, "PHY PLL locked %u iterations\n", i);
	return 0;
}