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

/* Variables and functions */
 int /*<<< orphan*/  I2C_ADDR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SUN8I_HDMI_PHY_DBG_CTRL_ADDR_MASK ; 
 int /*<<< orphan*/  SUN8I_HDMI_PHY_DBG_CTRL_PX_LOCK ; 
 int /*<<< orphan*/  SUN8I_HDMI_PHY_DBG_CTRL_REG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sun8i_hdmi_phy*) ; 

__attribute__((used)) static void FUNC3(struct sun8i_hdmi_phy *phy)
{
	FUNC2(phy);

	FUNC1(phy->regs, SUN8I_HDMI_PHY_DBG_CTRL_REG,
			   SUN8I_HDMI_PHY_DBG_CTRL_PX_LOCK,
			   SUN8I_HDMI_PHY_DBG_CTRL_PX_LOCK);

	/*
	 * Set PHY I2C address. It must match to the address set by
	 * dw_hdmi_phy_set_slave_addr().
	 */
	FUNC1(phy->regs, SUN8I_HDMI_PHY_DBG_CTRL_REG,
			   SUN8I_HDMI_PHY_DBG_CTRL_ADDR_MASK,
			   FUNC0(I2C_ADDR));
}