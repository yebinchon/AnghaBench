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
typedef  int u8 ;
struct dw_hdmi {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  HDMI_AUD_HBR_MASK ; 
 int /*<<< orphan*/  HDMI_AUD_INT ; 
 int /*<<< orphan*/  HDMI_AUD_SPDIFINT ; 
 int /*<<< orphan*/  HDMI_A_APIINTMSK ; 
 int /*<<< orphan*/  HDMI_FC_MASK0 ; 
 int /*<<< orphan*/  HDMI_FC_MASK1 ; 
 int /*<<< orphan*/  HDMI_FC_MASK2 ; 
 int /*<<< orphan*/  HDMI_GP_MASK ; 
 int /*<<< orphan*/  HDMI_I2CM_CTLINT ; 
 int /*<<< orphan*/  HDMI_I2CM_INT ; 
 int /*<<< orphan*/  HDMI_IH_MUTE ; 
 int /*<<< orphan*/  HDMI_IH_MUTE_AHBDMAAUD_STAT0 ; 
 int /*<<< orphan*/  HDMI_IH_MUTE_AS_STAT0 ; 
 int /*<<< orphan*/  HDMI_IH_MUTE_CEC_STAT0 ; 
 int /*<<< orphan*/  HDMI_IH_MUTE_FC_STAT0 ; 
 int /*<<< orphan*/  HDMI_IH_MUTE_FC_STAT1 ; 
 int /*<<< orphan*/  HDMI_IH_MUTE_FC_STAT2 ; 
 int /*<<< orphan*/  HDMI_IH_MUTE_I2CMPHY_STAT0 ; 
 int /*<<< orphan*/  HDMI_IH_MUTE_I2CM_STAT0 ; 
 int HDMI_IH_MUTE_MUTE_ALL_INTERRUPT ; 
 int HDMI_IH_MUTE_MUTE_WAKEUP_INTERRUPT ; 
 int /*<<< orphan*/  HDMI_IH_MUTE_PHY_STAT0 ; 
 int /*<<< orphan*/  HDMI_IH_MUTE_VP_STAT0 ; 
 int /*<<< orphan*/  HDMI_PHY_I2CM_CTLINT_ADDR ; 
 int /*<<< orphan*/  HDMI_PHY_I2CM_INT_ADDR ; 
 int /*<<< orphan*/  HDMI_PHY_MASK0 ; 
 int /*<<< orphan*/  HDMI_VP_MASK ; 
 int FUNC0 (struct dw_hdmi*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dw_hdmi*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct dw_hdmi *hdmi)
{
	u8 ih_mute;

	/*
	 * Boot up defaults are:
	 * HDMI_IH_MUTE   = 0x03 (disabled)
	 * HDMI_IH_MUTE_* = 0x00 (enabled)
	 *
	 * Disable top level interrupt bits in HDMI block
	 */
	ih_mute = FUNC0(hdmi, HDMI_IH_MUTE) |
		  HDMI_IH_MUTE_MUTE_WAKEUP_INTERRUPT |
		  HDMI_IH_MUTE_MUTE_ALL_INTERRUPT;

	FUNC1(hdmi, ih_mute, HDMI_IH_MUTE);

	/* by default mask all interrupts */
	FUNC1(hdmi, 0xff, HDMI_VP_MASK);
	FUNC1(hdmi, 0xff, HDMI_FC_MASK0);
	FUNC1(hdmi, 0xff, HDMI_FC_MASK1);
	FUNC1(hdmi, 0xff, HDMI_FC_MASK2);
	FUNC1(hdmi, 0xff, HDMI_PHY_MASK0);
	FUNC1(hdmi, 0xff, HDMI_PHY_I2CM_INT_ADDR);
	FUNC1(hdmi, 0xff, HDMI_PHY_I2CM_CTLINT_ADDR);
	FUNC1(hdmi, 0xff, HDMI_AUD_INT);
	FUNC1(hdmi, 0xff, HDMI_AUD_SPDIFINT);
	FUNC1(hdmi, 0xff, HDMI_AUD_HBR_MASK);
	FUNC1(hdmi, 0xff, HDMI_GP_MASK);
	FUNC1(hdmi, 0xff, HDMI_A_APIINTMSK);
	FUNC1(hdmi, 0xff, HDMI_I2CM_INT);
	FUNC1(hdmi, 0xff, HDMI_I2CM_CTLINT);

	/* Disable interrupts in the IH_MUTE_* registers */
	FUNC1(hdmi, 0xff, HDMI_IH_MUTE_FC_STAT0);
	FUNC1(hdmi, 0xff, HDMI_IH_MUTE_FC_STAT1);
	FUNC1(hdmi, 0xff, HDMI_IH_MUTE_FC_STAT2);
	FUNC1(hdmi, 0xff, HDMI_IH_MUTE_AS_STAT0);
	FUNC1(hdmi, 0xff, HDMI_IH_MUTE_PHY_STAT0);
	FUNC1(hdmi, 0xff, HDMI_IH_MUTE_I2CM_STAT0);
	FUNC1(hdmi, 0xff, HDMI_IH_MUTE_CEC_STAT0);
	FUNC1(hdmi, 0xff, HDMI_IH_MUTE_VP_STAT0);
	FUNC1(hdmi, 0xff, HDMI_IH_MUTE_I2CMPHY_STAT0);
	FUNC1(hdmi, 0xff, HDMI_IH_MUTE_AHBDMAAUD_STAT0);

	/* Enable top level interrupt bits in HDMI block */
	ih_mute &= ~(HDMI_IH_MUTE_MUTE_WAKEUP_INTERRUPT |
		    HDMI_IH_MUTE_MUTE_ALL_INTERRUPT);
	FUNC1(hdmi, ih_mute, HDMI_IH_MUTE);
}