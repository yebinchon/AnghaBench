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
struct sii9234 {int dummy; } ;

/* Variables and functions */
 int HDMI_RX_EQ_DATA0_REG ; 
 int HDMI_RX_EQ_DATA1_REG ; 
 int HDMI_RX_EQ_DATA2_REG ; 
 int HDMI_RX_EQ_DATA3_REG ; 
 int HDMI_RX_EQ_DATA4_REG ; 
 int HDMI_RX_PLL_CALREFSEL_REG ; 
 int HDMI_RX_PLL_VCOCAL_REG ; 
 int HDMI_RX_TMDS0_CCTRL1_REG ; 
 int HDMI_RX_TMDS_MODE_CTRL_REG ; 
 int HDMI_RX_TMDS_ZONE_CTRL_REG ; 
 int /*<<< orphan*/  MHL_TX_TMDS_CCTRL ; 
 int /*<<< orphan*/  FUNC0 (struct sii9234*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct sii9234*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct sii9234*) ; 

__attribute__((used)) static int FUNC3(struct sii9234 *ctx)
{
	FUNC0(ctx, HDMI_RX_TMDS0_CCTRL1_REG, 0xC1);
	FUNC0(ctx, HDMI_RX_PLL_CALREFSEL_REG, 0x03);
	FUNC0(ctx, HDMI_RX_PLL_VCOCAL_REG, 0x20);
	FUNC0(ctx, HDMI_RX_EQ_DATA0_REG, 0x8A);
	FUNC0(ctx, HDMI_RX_EQ_DATA1_REG, 0x6A);
	FUNC0(ctx, HDMI_RX_EQ_DATA2_REG, 0xAA);
	FUNC0(ctx, HDMI_RX_EQ_DATA3_REG, 0xCA);
	FUNC0(ctx, HDMI_RX_EQ_DATA4_REG, 0xEA);
	FUNC0(ctx, HDMI_RX_TMDS_ZONE_CTRL_REG, 0xA0);
	FUNC0(ctx, HDMI_RX_TMDS_MODE_CTRL_REG, 0x00);
	FUNC1(ctx, MHL_TX_TMDS_CCTRL, 0x34);
	FUNC0(ctx, 0x45, 0x44);
	FUNC0(ctx, 0x31, 0x0A);
	FUNC0(ctx, HDMI_RX_TMDS0_CCTRL1_REG, 0xC1);

	return FUNC2(ctx);
}