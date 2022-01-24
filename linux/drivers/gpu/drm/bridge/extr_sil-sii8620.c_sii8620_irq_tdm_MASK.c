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
typedef  int u8 ;
struct TYPE_2__ {int /*<<< orphan*/  r_size; scalar_t__ rx_ack; } ;
struct sii8620 {TYPE_1__ burst; int /*<<< orphan*/  mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  BIT_MHL_PLL_CTL2_CLKDETECT_EN ; 
 int /*<<< orphan*/  CM_ECBUS_S ; 
 int MSK_TDM_SYNCHRONIZED ; 
 int /*<<< orphan*/  REG_MHL_PLL_CTL2 ; 
 int /*<<< orphan*/  REG_TRXINTH ; 
 int /*<<< orphan*/  REG_TRXSTA2 ; 
 int /*<<< orphan*/  SII8620_BURST_BUF_LEN ; 
 int VAL_TDM_SYNCHRONIZED ; 
 int /*<<< orphan*/  FUNC0 (struct sii8620*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sii8620_got_xdevcap ; 
 int /*<<< orphan*/  FUNC1 (struct sii8620*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct sii8620*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct sii8620*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sii8620*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct sii8620*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct sii8620 *ctx)
{
	u8 stat = FUNC3(ctx, REG_TRXINTH);
	u8 tdm = FUNC3(ctx, REG_TRXSTA2);

	if ((tdm & MSK_TDM_SYNCHRONIZED) == VAL_TDM_SYNCHRONIZED) {
		ctx->mode = CM_ECBUS_S;
		ctx->burst.rx_ack = 0;
		ctx->burst.r_size = SII8620_BURST_BUF_LEN;
		FUNC0(ctx, SII8620_BURST_BUF_LEN);
		FUNC1(ctx, true);
		FUNC2(ctx, sii8620_got_xdevcap);
	} else {
		FUNC5(ctx,
			REG_MHL_PLL_CTL2, 0,
			REG_MHL_PLL_CTL2, BIT_MHL_PLL_CTL2_CLKDETECT_EN
		);
	}

	FUNC4(ctx, REG_TRXINTH, stat);
}