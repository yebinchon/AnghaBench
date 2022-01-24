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
struct sti_hdmi {int event_received; int /*<<< orphan*/  wait_event; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  HDMI_SRZ_CFG ; 
 int HDMI_SRZ_CFG_EN_BIASRES_DETECTION ; 
 int HDMI_SRZ_CFG_EN_SINK_TERM_DETECTION ; 
 int /*<<< orphan*/  HDMI_SRZ_PLL_CFG ; 
 int /*<<< orphan*/  HDMI_STA ; 
 int HDMI_STA_DLL_LCK ; 
 int /*<<< orphan*/  HDMI_TIMEOUT_PLL_LOCK ; 
 int FUNC2 (struct sti_hdmi*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sti_hdmi*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct sti_hdmi *hdmi)
{
	int val = 0;

	FUNC0("\n");

	hdmi->event_received = false;

	val = HDMI_SRZ_CFG_EN_SINK_TERM_DETECTION;
	val |= HDMI_SRZ_CFG_EN_BIASRES_DETECTION;

	FUNC3(hdmi, val, HDMI_SRZ_CFG);
	FUNC3(hdmi, 0, HDMI_SRZ_PLL_CFG);

	/* wait PLL interrupt */
	FUNC5(hdmi->wait_event,
					 hdmi->event_received == true,
					 FUNC4
					 (HDMI_TIMEOUT_PLL_LOCK));

	if (FUNC2(hdmi, HDMI_STA) & HDMI_STA_DLL_LCK)
		FUNC1("hdmi phy pll not well disabled\n");
}