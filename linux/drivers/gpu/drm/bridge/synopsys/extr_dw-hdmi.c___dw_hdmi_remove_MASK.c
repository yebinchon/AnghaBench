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
struct dw_hdmi {int /*<<< orphan*/  ddc; TYPE_1__* i2c; scalar_t__ cec_clk; scalar_t__ isfr_clk; scalar_t__ iahb_clk; scalar_t__ cec; scalar_t__ audio; } ;
struct TYPE_2__ {int /*<<< orphan*/  adap; } ;

/* Variables and functions */
 int /*<<< orphan*/  HDMI_IH_MUTE_PHY_STAT0 ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct dw_hdmi*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 

__attribute__((used)) static void FUNC6(struct dw_hdmi *hdmi)
{
	if (hdmi->audio && !FUNC0(hdmi->audio))
		FUNC5(hdmi->audio);
	if (!FUNC0(hdmi->cec))
		FUNC5(hdmi->cec);

	/* Disable all interrupts */
	FUNC2(hdmi, ~0, HDMI_IH_MUTE_PHY_STAT0);

	FUNC1(hdmi->iahb_clk);
	FUNC1(hdmi->isfr_clk);
	if (hdmi->cec_clk)
		FUNC1(hdmi->cec_clk);

	if (hdmi->i2c)
		FUNC3(&hdmi->i2c->adap);
	else
		FUNC4(hdmi->ddc);
}