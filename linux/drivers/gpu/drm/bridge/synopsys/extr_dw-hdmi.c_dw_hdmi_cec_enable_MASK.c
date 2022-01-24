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
struct dw_hdmi {int /*<<< orphan*/  mutex; int /*<<< orphan*/  mc_clkdis; } ;

/* Variables and functions */
 int /*<<< orphan*/  HDMI_MC_CLKDIS ; 
 int /*<<< orphan*/  HDMI_MC_CLKDIS_CECCLK_DISABLE ; 
 int /*<<< orphan*/  FUNC0 (struct dw_hdmi*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct dw_hdmi *hdmi)
{
	FUNC1(&hdmi->mutex);
	hdmi->mc_clkdis &= ~HDMI_MC_CLKDIS_CECCLK_DISABLE;
	FUNC0(hdmi, hdmi->mc_clkdis, HDMI_MC_CLKDIS);
	FUNC2(&hdmi->mutex);
}