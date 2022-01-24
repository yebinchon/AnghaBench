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
struct sun8i_hdmi_phy {int /*<<< orphan*/  regs; } ;
struct dw_hdmi {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SUN8I_HDMI_PHY_REXT_CTRL_REG ; 
 int /*<<< orphan*/  SUN8I_HDMI_PHY_REXT_CTRL_REXT_EN ; 
 int /*<<< orphan*/  FUNC0 (struct dw_hdmi*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct dw_hdmi*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct dw_hdmi *hdmi,
					struct sun8i_hdmi_phy *phy)
{
	FUNC1(hdmi, 0);
	FUNC0(hdmi, 1);

	FUNC2(phy->regs, SUN8I_HDMI_PHY_REXT_CTRL_REG,
			   SUN8I_HDMI_PHY_REXT_CTRL_REXT_EN, 0);
}