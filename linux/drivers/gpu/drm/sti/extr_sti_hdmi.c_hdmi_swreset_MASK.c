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
typedef  int u32 ;
struct sti_hdmi {int event_received; int /*<<< orphan*/  clk_audio; int /*<<< orphan*/  wait_event; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  HDMI_CFG ; 
 int HDMI_CFG_SW_RST_EN ; 
 int /*<<< orphan*/  HDMI_STA ; 
 int HDMI_STA_SW_RST ; 
 int /*<<< orphan*/  HDMI_TIMEOUT_SWRESET ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct sti_hdmi*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sti_hdmi*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct sti_hdmi *hdmi)
{
	u32 val;

	FUNC0("\n");

	/* Enable hdmi_audio clock only during hdmi reset */
	if (FUNC3(hdmi->clk_audio))
		FUNC1("Failed to prepare/enable hdmi_audio clk\n");

	/* Sw reset */
	hdmi->event_received = false;

	val = FUNC4(hdmi, HDMI_CFG);
	val |= HDMI_CFG_SW_RST_EN;
	FUNC5(hdmi, val, HDMI_CFG);

	/* Wait reset completed */
	FUNC7(hdmi->wait_event,
					 hdmi->event_received,
					 FUNC6
					 (HDMI_TIMEOUT_SWRESET));

	/*
	 * HDMI_STA_SW_RST bit is set to '1' when SW_RST bit in HDMI_CFG is
	 * set to '1' and clk_audio is running.
	 */
	if ((FUNC4(hdmi, HDMI_STA) & HDMI_STA_SW_RST) == 0)
		FUNC0("Warning: HDMI sw reset timeout occurs\n");

	val = FUNC4(hdmi, HDMI_CFG);
	val &= ~HDMI_CFG_SW_RST_EN;
	FUNC5(hdmi, val, HDMI_CFG);

	/* Disable hdmi_audio clock. Not used anymore for drm purpose */
	FUNC2(hdmi->clk_audio);
}