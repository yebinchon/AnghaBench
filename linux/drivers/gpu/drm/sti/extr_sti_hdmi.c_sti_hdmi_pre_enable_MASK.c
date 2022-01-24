#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ enabled; } ;
struct sti_hdmi {int enabled; TYPE_2__ audio; TYPE_1__* phy_ops; int /*<<< orphan*/  clk_phy; int /*<<< orphan*/  clk_tmds; int /*<<< orphan*/  clk_pix; } ;
struct drm_bridge {struct sti_hdmi* driver_private; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* start ) (struct sti_hdmi*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  HDMI_INT_EN ; 
 int /*<<< orphan*/  HDMI_WORKING_INT ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sti_hdmi*) ; 
 scalar_t__ FUNC4 (struct sti_hdmi*) ; 
 int /*<<< orphan*/  FUNC5 (struct sti_hdmi*) ; 
 scalar_t__ FUNC6 (struct sti_hdmi*) ; 
 int /*<<< orphan*/  FUNC7 (struct sti_hdmi*) ; 
 int /*<<< orphan*/  FUNC8 (struct sti_hdmi*) ; 
 scalar_t__ FUNC9 (struct sti_hdmi*) ; 
 int /*<<< orphan*/  FUNC10 (struct sti_hdmi*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct sti_hdmi*) ; 

__attribute__((used)) static void FUNC12(struct drm_bridge *bridge)
{
	struct sti_hdmi *hdmi = bridge->driver_private;

	FUNC0("\n");

	if (hdmi->enabled)
		return;

	/* Prepare/enable clocks */
	if (FUNC2(hdmi->clk_pix))
		FUNC1("Failed to prepare/enable hdmi_pix clk\n");
	if (FUNC2(hdmi->clk_tmds))
		FUNC1("Failed to prepare/enable hdmi_tmds clk\n");
	if (FUNC2(hdmi->clk_phy))
		FUNC1("Failed to prepare/enable hdmi_rejec_pll clk\n");

	hdmi->enabled = true;

	/* Program hdmi serializer and start phy */
	if (!hdmi->phy_ops->start(hdmi)) {
		FUNC1("Unable to start hdmi phy\n");
		return;
	}

	/* Program hdmi active area */
	FUNC3(hdmi);

	/* Enable working interrupts */
	FUNC10(hdmi, HDMI_WORKING_INT, HDMI_INT_EN);

	/* Program hdmi config */
	FUNC7(hdmi);

	/* Program AVI infoframe */
	if (FUNC6(hdmi))
		FUNC1("Unable to configure AVI infoframe\n");

	if (hdmi->audio.enabled) {
		if (FUNC4(hdmi))
			FUNC1("Unable to configure audio\n");
	} else {
		FUNC5(hdmi);
	}

	/* Program VS infoframe */
	if (FUNC9(hdmi))
		FUNC1("Unable to configure VS infoframe\n");

	/* Sw reset */
	FUNC8(hdmi);
}