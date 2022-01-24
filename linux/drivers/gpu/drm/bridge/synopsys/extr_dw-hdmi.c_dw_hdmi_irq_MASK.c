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
struct TYPE_2__ {scalar_t__ dev; } ;
struct dw_hdmi {TYPE_1__ bridge; int /*<<< orphan*/  dev; int /*<<< orphan*/  cec_notifier_mutex; int /*<<< orphan*/  cec_notifier; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  HDMI_IH_MUTE_PHY_STAT0 ; 
 int /*<<< orphan*/  HDMI_IH_PHY_STAT0 ; 
 int HDMI_IH_PHY_STAT0_HPD ; 
 int HDMI_IH_PHY_STAT0_RX_SENSE ; 
 int HDMI_IH_PHY_STAT0_RX_SENSE0 ; 
 int HDMI_IH_PHY_STAT0_RX_SENSE1 ; 
 int HDMI_IH_PHY_STAT0_RX_SENSE2 ; 
 int HDMI_IH_PHY_STAT0_RX_SENSE3 ; 
 int HDMI_PHY_HPD ; 
 int /*<<< orphan*/  HDMI_PHY_POL0 ; 
 int HDMI_PHY_RX_SENSE ; 
 int HDMI_PHY_RX_SENSE0 ; 
 int HDMI_PHY_RX_SENSE1 ; 
 int HDMI_PHY_RX_SENSE2 ; 
 int HDMI_PHY_RX_SENSE3 ; 
 int /*<<< orphan*/  HDMI_PHY_STAT0 ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct dw_hdmi*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct dw_hdmi*,int,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct dw_hdmi*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct dw_hdmi*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC9(int irq, void *dev_id)
{
	struct dw_hdmi *hdmi = dev_id;
	u8 intr_stat, phy_int_pol, phy_pol_mask, phy_stat;

	intr_stat = FUNC5(hdmi, HDMI_IH_PHY_STAT0);
	phy_int_pol = FUNC5(hdmi, HDMI_PHY_POL0);
	phy_stat = FUNC5(hdmi, HDMI_PHY_STAT0);

	phy_pol_mask = 0;
	if (intr_stat & HDMI_IH_PHY_STAT0_HPD)
		phy_pol_mask |= HDMI_PHY_HPD;
	if (intr_stat & HDMI_IH_PHY_STAT0_RX_SENSE0)
		phy_pol_mask |= HDMI_PHY_RX_SENSE0;
	if (intr_stat & HDMI_IH_PHY_STAT0_RX_SENSE1)
		phy_pol_mask |= HDMI_PHY_RX_SENSE1;
	if (intr_stat & HDMI_IH_PHY_STAT0_RX_SENSE2)
		phy_pol_mask |= HDMI_PHY_RX_SENSE2;
	if (intr_stat & HDMI_IH_PHY_STAT0_RX_SENSE3)
		phy_pol_mask |= HDMI_PHY_RX_SENSE3;

	if (phy_pol_mask)
		FUNC4(hdmi, ~phy_int_pol, phy_pol_mask, HDMI_PHY_POL0);

	/*
	 * RX sense tells us whether the TDMS transmitters are detecting
	 * load - in other words, there's something listening on the
	 * other end of the link.  Use this to decide whether we should
	 * power on the phy as HPD may be toggled by the sink to merely
	 * ask the source to re-read the EDID.
	 */
	if (intr_stat &
	    (HDMI_IH_PHY_STAT0_RX_SENSE | HDMI_IH_PHY_STAT0_HPD)) {
		FUNC3(hdmi,
				       phy_stat & HDMI_PHY_HPD,
				       phy_stat & HDMI_PHY_RX_SENSE);

		if ((phy_stat & (HDMI_PHY_RX_SENSE | HDMI_PHY_HPD)) == 0) {
			FUNC7(&hdmi->cec_notifier_mutex);
			FUNC0(hdmi->cec_notifier);
			FUNC8(&hdmi->cec_notifier_mutex);
		}
	}

	if (intr_stat & HDMI_IH_PHY_STAT0_HPD) {
		FUNC1(hdmi->dev, "EVENT=%s\n",
			phy_int_pol & HDMI_PHY_HPD ? "plugin" : "plugout");
		if (hdmi->bridge.dev)
			FUNC2(hdmi->bridge.dev);
	}

	FUNC6(hdmi, intr_stat, HDMI_IH_PHY_STAT0);
	FUNC6(hdmi, ~(HDMI_IH_PHY_STAT0_HPD | HDMI_IH_PHY_STAT0_RX_SENSE),
		    HDMI_IH_MUTE_PHY_STAT0);

	return IRQ_HANDLED;
}