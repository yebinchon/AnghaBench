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
struct dw_hdmi {int /*<<< orphan*/  mc_clkdis; } ;

/* Variables and functions */
 int /*<<< orphan*/  HDMI_MC_CLKDIS ; 
 int /*<<< orphan*/  HDMI_MC_CLKDIS_AUDCLK_DISABLE ; 
 int /*<<< orphan*/  FUNC0 (struct dw_hdmi*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct dw_hdmi *hdmi, bool enable)
{
	if (enable)
		hdmi->mc_clkdis &= ~HDMI_MC_CLKDIS_AUDCLK_DISABLE;
	else
		hdmi->mc_clkdis |= HDMI_MC_CLKDIS_AUDCLK_DISABLE;
	FUNC0(hdmi, hdmi->mc_clkdis, HDMI_MC_CLKDIS);
}