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
typedef  int u32 ;
struct TYPE_2__ {int pes; int rings; int cd_offset; int rd_offset; } ;
struct safexcel_crypto_priv {int flags; TYPE_1__ config; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EIP197_DEFAULT_RING_SIZE ; 
 int EIP197_DxE_THR_CTRL_EN ; 
 int EIP197_DxE_THR_CTRL_RESET_PE ; 
 int EIP197_FUNCTION_ALL ; 
 scalar_t__ FUNC0 (struct safexcel_crypto_priv*) ; 
 scalar_t__ FUNC1 (struct safexcel_crypto_priv*) ; 
 scalar_t__ EIP197_HIA_AIC_G_ACK ; 
 scalar_t__ EIP197_HIA_AIC_G_ENABLE_CTRL ; 
 scalar_t__ FUNC2 (struct safexcel_crypto_priv*) ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ FUNC4 (struct safexcel_crypto_priv*,int) ; 
 scalar_t__ FUNC5 (struct safexcel_crypto_priv*) ; 
 scalar_t__ FUNC6 (int) ; 
 int EIP197_HIA_DFE_CFG_DIS_DEBUG ; 
 scalar_t__ FUNC7 (struct safexcel_crypto_priv*) ; 
 scalar_t__ FUNC8 (int) ; 
 scalar_t__ FUNC9 (struct safexcel_crypto_priv*) ; 
 scalar_t__ FUNC10 (int) ; 
 int EIP197_HIA_DSE_CFG_ALWAYS_BUFFERABLE ; 
 int EIP197_HIA_DSE_CFG_DIS_DEBUG ; 
 int EIP197_HIA_DSE_CFG_EN_SINGLE_WR ; 
 scalar_t__ FUNC11 (struct safexcel_crypto_priv*) ; 
 scalar_t__ FUNC12 (int) ; 
 scalar_t__ FUNC13 (int) ; 
 int FUNC14 (int /*<<< orphan*/ ) ; 
 int FUNC15 (int /*<<< orphan*/ ) ; 
 int FUNC16 (int) ; 
 int FUNC17 (int) ; 
 int FUNC18 (int) ; 
 int FUNC19 (int) ; 
 scalar_t__ FUNC20 (struct safexcel_crypto_priv*) ; 
 scalar_t__ EIP197_HIA_MST_CTRL ; 
 scalar_t__ FUNC21 (int) ; 
 int EIP197_HIA_RA_PE_CTRL_EN ; 
 int EIP197_HIA_RA_PE_CTRL_RESET ; 
 scalar_t__ FUNC22 (struct safexcel_crypto_priv*,int) ; 
 scalar_t__ EIP197_HIA_xDR_CFG ; 
 scalar_t__ EIP197_HIA_xDR_PREP_COUNT ; 
 scalar_t__ EIP197_HIA_xDR_PREP_PNTR ; 
 scalar_t__ EIP197_HIA_xDR_PROC_COUNT ; 
 scalar_t__ EIP197_HIA_xDR_PROC_PNTR ; 
 scalar_t__ EIP197_HIA_xDR_RING_SIZE ; 
 scalar_t__ EIP197_MST_CTRL ; 
 int FUNC23 (int /*<<< orphan*/ ) ; 
 int FUNC24 (int) ; 
 int FUNC25 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC26 (struct safexcel_crypto_priv*) ; 
 scalar_t__ FUNC27 (int) ; 
 scalar_t__ FUNC28 (int) ; 
 scalar_t__ FUNC29 (int) ; 
 int EIP197_PE_EIP96_TOKEN_CTRL_CTX_UPDATES ; 
 int EIP197_PE_EIP96_TOKEN_CTRL_ENABLE_TIMEOUT ; 
 int EIP197_PE_EIP96_TOKEN_CTRL_NO_TOKEN_WAIT ; 
 scalar_t__ FUNC30 (int) ; 
 scalar_t__ FUNC31 (int) ; 
 int FUNC32 (int) ; 
 int FUNC33 (int) ; 
 scalar_t__ FUNC34 (int) ; 
 int FUNC35 (int) ; 
 int FUNC36 (int) ; 
 int EIP197_TRC_CACHE ; 
 int EIP197_xDR_PREP_CLR_COUNT ; 
 int EIP197_xDR_PROC_CLR_COUNT ; 
 int FUNC37 (int,int) ; 
 int /*<<< orphan*/  RD_CACHE_3BITS ; 
 int /*<<< orphan*/  RD_CACHE_4BITS ; 
 int SAFEXCEL_HW_EIP197 ; 
 int /*<<< orphan*/  WR_CACHE_3BITS ; 
 int /*<<< orphan*/  WR_CACHE_4BITS ; 
 int /*<<< orphan*/  FUNC38 (int /*<<< orphan*/ ,char*,int,int) ; 
 int FUNC39 (struct safexcel_crypto_priv*) ; 
 int /*<<< orphan*/  FUNC40 (struct safexcel_crypto_priv*) ; 
 int FUNC41 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC42 (struct safexcel_crypto_priv*) ; 
 int /*<<< orphan*/  FUNC43 (struct safexcel_crypto_priv*) ; 
 int /*<<< orphan*/  FUNC44 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC45(struct safexcel_crypto_priv *priv)
{
	u32 val;
	int i, ret, pe;

	FUNC38(priv->dev, "HW init: using %d pipe(s) and %d ring(s)\n",
		priv->config.pes, priv->config.rings);

	/*
	 * For EIP197's only set maximum number of TX commands to 2^5 = 32
	 * Skip for the EIP97 as it does not have this field.
	 */
	if (priv->flags & SAFEXCEL_HW_EIP197) {
		val = FUNC41(FUNC0(priv) + EIP197_HIA_MST_CTRL);
		val |= FUNC24(5);
		FUNC44(val, FUNC0(priv) + EIP197_HIA_MST_CTRL);
	}

	/* Configure wr/rd cache values */
	FUNC44(FUNC23(RD_CACHE_4BITS) |
	       FUNC25(WR_CACHE_4BITS),
	       FUNC20(priv) + EIP197_MST_CTRL);

	/* Interrupts reset */

	/* Disable all global interrupts */
	FUNC44(0, FUNC1(priv) + EIP197_HIA_AIC_G_ENABLE_CTRL);

	/* Clear any pending interrupt */
	FUNC44(FUNC37(31, 0), FUNC1(priv) + EIP197_HIA_AIC_G_ACK);

	/* Processing Engine configuration */
	for (pe = 0; pe < priv->config.pes; pe++) {
		/* Data Fetch Engine configuration */

		/* Reset all DFE threads */
		FUNC44(EIP197_DxE_THR_CTRL_RESET_PE,
		       FUNC7(priv) + FUNC8(pe));

		if (priv->flags & SAFEXCEL_HW_EIP197)
			/* Reset HIA input interface arbiter (EIP197 only) */
			FUNC44(EIP197_HIA_RA_PE_CTRL_RESET,
			       FUNC0(priv) + FUNC21(pe));

		/* DMA transfer size to use */
		val = EIP197_HIA_DFE_CFG_DIS_DEBUG;
		val |= FUNC19(6) |
		       FUNC17(9);
		val |= FUNC18(6) |
		       FUNC16(7);
		val |= FUNC15(RD_CACHE_3BITS);
		val |= FUNC14(RD_CACHE_3BITS);
		FUNC44(val, FUNC5(priv) + FUNC6(pe));

		/* Leave the DFE threads reset state */
		FUNC44(0, FUNC7(priv) + FUNC8(pe));

		/* Configure the processing engine thresholds */
		FUNC44(FUNC33(6) |
		       FUNC32(9),
		       FUNC26(priv) + FUNC30(pe));
		FUNC44(FUNC33(6) |
		       FUNC32(7),
		       FUNC26(priv) + FUNC31(pe));

		if (priv->flags & SAFEXCEL_HW_EIP197)
			/* enable HIA input interface arbiter and rings */
			FUNC44(EIP197_HIA_RA_PE_CTRL_EN |
			       FUNC37(priv->config.rings - 1, 0),
			       FUNC0(priv) + FUNC21(pe));

		/* Data Store Engine configuration */

		/* Reset all DSE threads */
		FUNC44(EIP197_DxE_THR_CTRL_RESET_PE,
		       FUNC11(priv) + FUNC12(pe));

		/* Wait for all DSE threads to complete */
		while ((FUNC41(FUNC11(priv) + FUNC13(pe)) &
			FUNC37(15, 12)) != FUNC37(15, 12))
			;

		/* DMA transfer size to use */
		val = EIP197_HIA_DSE_CFG_DIS_DEBUG;
		val |= FUNC19(7) |
		       FUNC17(8);
		val |= FUNC15(WR_CACHE_3BITS);
		val |= EIP197_HIA_DSE_CFG_ALWAYS_BUFFERABLE;
		/* FIXME: instability issues can occur for EIP97 but disabling
		 * it impacts performance.
		 */
		if (priv->flags & SAFEXCEL_HW_EIP197)
			val |= EIP197_HIA_DSE_CFG_EN_SINGLE_WR;
		FUNC44(val, FUNC9(priv) + FUNC10(pe));

		/* Leave the DSE threads reset state */
		FUNC44(0, FUNC11(priv) + FUNC12(pe));

		/* Configure the procesing engine thresholds */
		FUNC44(FUNC36(7) |
		       FUNC35(8),
		       FUNC26(priv) + FUNC34(pe));

		/* Processing Engine configuration */

		/* Token & context configuration */
		val = EIP197_PE_EIP96_TOKEN_CTRL_CTX_UPDATES |
		      EIP197_PE_EIP96_TOKEN_CTRL_NO_TOKEN_WAIT |
		      EIP197_PE_EIP96_TOKEN_CTRL_ENABLE_TIMEOUT;
		FUNC44(val, FUNC26(priv) + FUNC29(pe));

		/* H/W capabilities selection: just enable everything */
		FUNC44(EIP197_FUNCTION_ALL,
		       FUNC26(priv) + FUNC28(pe));
		FUNC44(EIP197_FUNCTION_ALL,
		       FUNC26(priv) + FUNC27(pe));
	}

	/* Command Descriptor Rings prepare */
	for (i = 0; i < priv->config.rings; i++) {
		/* Clear interrupts for this ring */
		FUNC44(FUNC37(31, 0),
		       FUNC2(priv) + FUNC3(i));

		/* Disable external triggering */
		FUNC44(0, FUNC4(priv, i) + EIP197_HIA_xDR_CFG);

		/* Clear the pending prepared counter */
		FUNC44(EIP197_xDR_PREP_CLR_COUNT,
		       FUNC4(priv, i) + EIP197_HIA_xDR_PREP_COUNT);

		/* Clear the pending processed counter */
		FUNC44(EIP197_xDR_PROC_CLR_COUNT,
		       FUNC4(priv, i) + EIP197_HIA_xDR_PROC_COUNT);

		FUNC44(0,
		       FUNC4(priv, i) + EIP197_HIA_xDR_PREP_PNTR);
		FUNC44(0,
		       FUNC4(priv, i) + EIP197_HIA_xDR_PROC_PNTR);

		FUNC44((EIP197_DEFAULT_RING_SIZE * priv->config.cd_offset) << 2,
		       FUNC4(priv, i) + EIP197_HIA_xDR_RING_SIZE);
	}

	/* Result Descriptor Ring prepare */
	for (i = 0; i < priv->config.rings; i++) {
		/* Disable external triggering*/
		FUNC44(0, FUNC22(priv, i) + EIP197_HIA_xDR_CFG);

		/* Clear the pending prepared counter */
		FUNC44(EIP197_xDR_PREP_CLR_COUNT,
		       FUNC22(priv, i) + EIP197_HIA_xDR_PREP_COUNT);

		/* Clear the pending processed counter */
		FUNC44(EIP197_xDR_PROC_CLR_COUNT,
		       FUNC22(priv, i) + EIP197_HIA_xDR_PROC_COUNT);

		FUNC44(0,
		       FUNC22(priv, i) + EIP197_HIA_xDR_PREP_PNTR);
		FUNC44(0,
		       FUNC22(priv, i) + EIP197_HIA_xDR_PROC_PNTR);

		/* Ring size */
		FUNC44((EIP197_DEFAULT_RING_SIZE * priv->config.rd_offset) << 2,
		       FUNC22(priv, i) + EIP197_HIA_xDR_RING_SIZE);
	}

	for (pe = 0; pe < priv->config.pes; pe++) {
		/* Enable command descriptor rings */
		FUNC44(EIP197_DxE_THR_CTRL_EN | FUNC37(priv->config.rings - 1, 0),
		       FUNC7(priv) + FUNC8(pe));

		/* Enable result descriptor rings */
		FUNC44(EIP197_DxE_THR_CTRL_EN | FUNC37(priv->config.rings - 1, 0),
		       FUNC11(priv) + FUNC12(pe));
	}

	/* Clear any HIA interrupt */
	FUNC44(FUNC37(30, 20), FUNC1(priv) + EIP197_HIA_AIC_G_ACK);

	if (priv->flags & SAFEXCEL_HW_EIP197) {
		FUNC40(priv);
		priv->flags |= EIP197_TRC_CACHE;

		ret = FUNC39(priv);
		if (ret)
			return ret;
	}

	FUNC42(priv);
	FUNC43(priv);

	return 0;
}