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
 int /*<<< orphan*/  HDMI_RX_TMDS_CH_EN_REG ; 
 int /*<<< orphan*/  HDMI_RX_TMDS_CLK_EN_REG ; 
 int /*<<< orphan*/  TPI_DPD_REG ; 
 int /*<<< orphan*/  FUNC0 (struct sii9234*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct sii9234*,int,int) ; 
 int FUNC2 (struct sii9234*) ; 
 int /*<<< orphan*/  FUNC3 (struct sii9234*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct sii9234 *ctx)
{
	/* Force the SiI9234 into the D0 state. */
	FUNC3(ctx, TPI_DPD_REG, 0x3F);
	/* Enable TxPLL Clock */
	FUNC0(ctx, HDMI_RX_TMDS_CLK_EN_REG, 0x01);
	/* Enable Tx Clock Path & Equalizer */
	FUNC0(ctx, HDMI_RX_TMDS_CH_EN_REG, 0x15);
	/* Power Up TMDS */
	FUNC1(ctx, 0x08, 0x35);
	return FUNC2(ctx);
}