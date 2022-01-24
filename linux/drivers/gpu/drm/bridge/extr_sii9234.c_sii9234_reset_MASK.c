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
 int ATT_THRESH_SHIFT ; 
 int BLOCK_RGND_INT ; 
 int /*<<< orphan*/  CBUS_LINK_CONTROL_2_REG ; 
 int CBUS_LKOUT_MASK ; 
 int DEGLITCH_TIME_50MS ; 
 int DVRFLT_SEL ; 
 int MHL_DISC_FAIL_MASK ; 
 int MHL_EST_MASK ; 
 int /*<<< orphan*/  MHL_INIT_TIMEOUT ; 
 int MHL_TX_DISC_CTRL1_REG ; 
 int MHL_TX_DISC_CTRL2_REG ; 
 int MHL_TX_DISC_CTRL3_REG ; 
 int MHL_TX_DISC_CTRL4_REG ; 
 int MHL_TX_DISC_CTRL5_REG ; 
 int MHL_TX_DISC_CTRL6_REG ; 
 int MHL_TX_DISC_CTRL8_REG ; 
 int MHL_TX_INTR1_ENABLE_REG ; 
 int MHL_TX_INTR4_ENABLE_REG ; 
 int MHL_TX_INT_CTRL_REG ; 
 int MHL_TX_MHLTX_CTL6_REG ; 
 int RGND_READY_MASK ; 
 int SINGLE_ATT ; 
 int USB_ID_OVR ; 
 int /*<<< orphan*/  FUNC0 (struct sii9234*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sii9234*) ; 
 int /*<<< orphan*/  FUNC2 (struct sii9234*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct sii9234*,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct sii9234*) ; 
 int FUNC6 (struct sii9234*) ; 
 int FUNC7 (struct sii9234*) ; 
 int FUNC8 (struct sii9234*) ; 
 int FUNC9 (struct sii9234*) ; 
 int FUNC10 (struct sii9234*) ; 
 int FUNC11 (struct sii9234*) ; 

__attribute__((used)) static int FUNC12(struct sii9234 *ctx)
{
	int ret;

	FUNC8(ctx);

	ret = FUNC11(ctx);
	if (ret < 0)
		return ret;
	ret = FUNC7(ctx);
	if (ret < 0)
		return ret;
	ret = FUNC9(ctx);
	if (ret < 0)
		return ret;
	ret = FUNC10(ctx);
	if (ret < 0)
		return ret;

	/* Enable HDCP Compliance safety */
	FUNC2(ctx, 0x2B, 0x01);
	/* CBUS discovery cycle time for each drive and float = 150us */
	FUNC3(ctx, MHL_TX_DISC_CTRL1_REG, 0x04, 0x06);
	/* Clear bit 6 (reg_skip_rgnd) */
	FUNC2(ctx, MHL_TX_DISC_CTRL2_REG, (1 << 7) /* Reserved */
		      | 2 << ATT_THRESH_SHIFT | DEGLITCH_TIME_50MS);
	/*
	 * Changed from 66 to 65 for 94[1:0] = 01 = 5k reg_cbusmhl_pup_sel
	 * 1.8V CBUS VTH & GND threshold
	 * to meet CTS 3.3.7.2 spec
	 */
	FUNC2(ctx, MHL_TX_DISC_CTRL5_REG, 0x77);
	FUNC0(ctx, CBUS_LINK_CONTROL_2_REG, ~0, MHL_INIT_TIMEOUT);
	FUNC2(ctx, MHL_TX_MHLTX_CTL6_REG, 0xA0);
	/* RGND & single discovery attempt (RGND blocking) */
	FUNC2(ctx, MHL_TX_DISC_CTRL6_REG, BLOCK_RGND_INT |
		      DVRFLT_SEL | SINGLE_ATT);
	/* Use VBUS path of discovery state machine */
	FUNC2(ctx, MHL_TX_DISC_CTRL8_REG, 0);
	/* 0x92[3] sets the CBUS / ID switch */
	FUNC3(ctx, MHL_TX_DISC_CTRL6_REG, ~0, USB_ID_OVR);
	/*
	 * To allow RGND engine to operate correctly.
	 * When moving the chip from D2 to D0 (power up, init regs)
	 * the values should be
	 * 94[1:0] = 01  reg_cbusmhl_pup_sel[1:0] should be set for 5k
	 * 93[7:6] = 10  reg_cbusdisc_pup_sel[1:0] should be
	 * set for 10k (default)
	 * 93[5:4] = 00  reg_cbusidle_pup_sel[1:0] = open (default)
	 */
	FUNC3(ctx, MHL_TX_DISC_CTRL3_REG, ~0, 0x86);
	/*
	 * Change from CC to 8C to match 5K
	 * to meet CTS 3.3.72 spec
	 */
	FUNC3(ctx, MHL_TX_DISC_CTRL4_REG, ~0, 0x8C);
	/* Configure the interrupt as active high */
	FUNC3(ctx, MHL_TX_INT_CTRL_REG, 0, 0x06);

	FUNC4(25);

	/* Release usb_id switch */
	FUNC3(ctx, MHL_TX_DISC_CTRL6_REG, 0,  USB_ID_OVR);
	FUNC2(ctx, MHL_TX_DISC_CTRL1_REG, 0x27);

	ret = FUNC8(ctx);
	if (ret < 0)
		return ret;
	ret = FUNC6(ctx);
	if (ret < 0)
		return ret;

	/* Enable Auto soft reset on SCDT = 0 */
	FUNC2(ctx, 0x05, 0x04);
	/* HDMI Transcode mode enable */
	FUNC2(ctx, 0x0D, 0x1C);
	FUNC2(ctx, MHL_TX_INTR4_ENABLE_REG,
		      RGND_READY_MASK | CBUS_LKOUT_MASK
			| MHL_DISC_FAIL_MASK | MHL_EST_MASK);
	FUNC2(ctx, MHL_TX_INTR1_ENABLE_REG, 0x60);

	/* This point is very important before measure RGND impedance */
	FUNC1(ctx);
	FUNC3(ctx, MHL_TX_DISC_CTRL4_REG, 0, 0xF0);
	FUNC3(ctx, MHL_TX_DISC_CTRL5_REG, 0, 0x03);
	FUNC5(ctx);

	/* Force upstream HPD to 0 when not in MHL mode */
	FUNC3(ctx, MHL_TX_INT_CTRL_REG, 0, 1 << 5);
	FUNC3(ctx, MHL_TX_INT_CTRL_REG, ~0, 1 << 4);

	return FUNC8(ctx);
}