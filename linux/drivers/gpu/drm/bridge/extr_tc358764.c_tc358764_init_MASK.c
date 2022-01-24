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
typedef  int /*<<< orphan*/  u32 ;
struct tc358764 {int /*<<< orphan*/  dev; scalar_t__ error; } ;

/* Variables and functions */
 int /*<<< orphan*/  DSI_LANEENABLE ; 
 int DSI_RX_START ; 
 int /*<<< orphan*/  DSI_STARTDSI ; 
 int LANEENABLE_CLEN ; 
 int LANEENABLE_L0EN ; 
 int LANEENABLE_L1EN ; 
 int LANEENABLE_L2EN ; 
 int LANEENABLE_L3EN ; 
 int LPX_PERIOD ; 
 int /*<<< orphan*/  LVI_B0 ; 
 int /*<<< orphan*/  LVI_B1 ; 
 int /*<<< orphan*/  LVI_B2 ; 
 int /*<<< orphan*/  LVI_B3 ; 
 int /*<<< orphan*/  LVI_B4 ; 
 int /*<<< orphan*/  LVI_B5 ; 
 int /*<<< orphan*/  LVI_B6 ; 
 int /*<<< orphan*/  LVI_B7 ; 
 int /*<<< orphan*/  LVI_DE ; 
 int /*<<< orphan*/  LVI_G0 ; 
 int /*<<< orphan*/  LVI_G1 ; 
 int /*<<< orphan*/  LVI_G2 ; 
 int /*<<< orphan*/  LVI_G3 ; 
 int /*<<< orphan*/  LVI_G4 ; 
 int /*<<< orphan*/  LVI_G5 ; 
 int /*<<< orphan*/  LVI_G6 ; 
 int /*<<< orphan*/  LVI_G7 ; 
 int /*<<< orphan*/  LVI_HS ; 
 int /*<<< orphan*/  LVI_L0 ; 
 int /*<<< orphan*/  LVI_R0 ; 
 int /*<<< orphan*/  LVI_R1 ; 
 int /*<<< orphan*/  LVI_R2 ; 
 int /*<<< orphan*/  LVI_R3 ; 
 int /*<<< orphan*/  LVI_R4 ; 
 int /*<<< orphan*/  LVI_R5 ; 
 int /*<<< orphan*/  LVI_R6 ; 
 int /*<<< orphan*/  LVI_R7 ; 
 int /*<<< orphan*/  LVI_VS ; 
 int /*<<< orphan*/  LV_CFG ; 
 int LV_CFG_CLKPOL1 ; 
 int LV_CFG_CLKPOL2 ; 
 int LV_CFG_LVEN ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LV_MX0003 ; 
 int /*<<< orphan*/  LV_MX0407 ; 
 int /*<<< orphan*/  LV_MX0811 ; 
 int /*<<< orphan*/  LV_MX1215 ; 
 int /*<<< orphan*/  LV_MX1619 ; 
 int /*<<< orphan*/  LV_MX2023 ; 
 int /*<<< orphan*/  LV_MX2427 ; 
 int /*<<< orphan*/  LV_PHY0 ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  PPI_D0S_CLRSIPOCOUNT ; 
 int /*<<< orphan*/  PPI_D1S_CLRSIPOCOUNT ; 
 int /*<<< orphan*/  PPI_D2S_CLRSIPOCOUNT ; 
 int /*<<< orphan*/  PPI_D3S_CLRSIPOCOUNT ; 
 int /*<<< orphan*/  PPI_LANEENABLE ; 
 int /*<<< orphan*/  PPI_LPTXTIMECNT ; 
 int /*<<< orphan*/  PPI_STARTPPI ; 
 int PPI_START_FUNCTION ; 
 int /*<<< orphan*/  PPI_TX_RX_TA ; 
 int /*<<< orphan*/  SYS_ID ; 
 int /*<<< orphan*/  SYS_RST ; 
 int SYS_RST_LCD ; 
 int TTA_GET ; 
 int TTA_SURE ; 
 int /*<<< orphan*/  VP_CTRL ; 
 int FUNC5 (int) ; 
 int VP_CTRL_HSPOL ; 
 int FUNC6 (int) ; 
 int FUNC7 (int) ; 
 int VP_CTRL_VSPOL ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct tc358764*) ; 
 int /*<<< orphan*/  FUNC10 (struct tc358764*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct tc358764*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC12(struct tc358764 *ctx)
{
	u32 v = 0;

	FUNC10(ctx, SYS_ID, &v);
	if (ctx->error)
		return FUNC9(ctx);
	FUNC8(ctx->dev, "ID: %#x\n", v);

	/* configure PPI counters */
	FUNC11(ctx, PPI_TX_RX_TA, TTA_GET | TTA_SURE);
	FUNC11(ctx, PPI_LPTXTIMECNT, LPX_PERIOD);
	FUNC11(ctx, PPI_D0S_CLRSIPOCOUNT, 5);
	FUNC11(ctx, PPI_D1S_CLRSIPOCOUNT, 5);
	FUNC11(ctx, PPI_D2S_CLRSIPOCOUNT, 5);
	FUNC11(ctx, PPI_D3S_CLRSIPOCOUNT, 5);

	/* enable four data lanes and clock lane */
	FUNC11(ctx, PPI_LANEENABLE, LANEENABLE_L3EN | LANEENABLE_L2EN |
		       LANEENABLE_L1EN | LANEENABLE_L0EN | LANEENABLE_CLEN);
	FUNC11(ctx, DSI_LANEENABLE, LANEENABLE_L3EN | LANEENABLE_L2EN |
		       LANEENABLE_L1EN | LANEENABLE_L0EN | LANEENABLE_CLEN);

	/* start */
	FUNC11(ctx, PPI_STARTPPI, PPI_START_FUNCTION);
	FUNC11(ctx, DSI_STARTDSI, DSI_RX_START);

	/* configure video path */
	FUNC11(ctx, VP_CTRL, FUNC7(15) | FUNC6(1) |
		       FUNC5(1) | VP_CTRL_HSPOL | VP_CTRL_VSPOL);

	/* reset PHY */
	FUNC11(ctx, LV_PHY0, FUNC4(1) |
		       FUNC3(4) | FUNC1(2) | FUNC2(6));
	FUNC11(ctx, LV_PHY0, FUNC3(4) | FUNC1(2) |
		       FUNC2(6));

	/* reset bridge */
	FUNC11(ctx, SYS_RST, SYS_RST_LCD);

	/* set bit order */
	FUNC11(ctx, LV_MX0003, FUNC0(LVI_R0, LVI_R1, LVI_R2, LVI_R3));
	FUNC11(ctx, LV_MX0407, FUNC0(LVI_R4, LVI_R7, LVI_R5, LVI_G0));
	FUNC11(ctx, LV_MX0811, FUNC0(LVI_G1, LVI_G2, LVI_G6, LVI_G7));
	FUNC11(ctx, LV_MX1215, FUNC0(LVI_G3, LVI_G4, LVI_G5, LVI_B0));
	FUNC11(ctx, LV_MX1619, FUNC0(LVI_B6, LVI_B7, LVI_B1, LVI_B2));
	FUNC11(ctx, LV_MX2023, FUNC0(LVI_B3, LVI_B4, LVI_B5, LVI_L0));
	FUNC11(ctx, LV_MX2427, FUNC0(LVI_HS, LVI_VS, LVI_DE, LVI_R6));
	FUNC11(ctx, LV_CFG, LV_CFG_CLKPOL2 | LV_CFG_CLKPOL1 |
		       LV_CFG_LVEN);

	return FUNC9(ctx);
}