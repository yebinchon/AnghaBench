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
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct intel_encoder {int port; TYPE_1__ base; } ;
struct icl_mg_phy_ddi_buf_trans {int /*<<< orphan*/  cri_txdeemph_override_11_6; int /*<<< orphan*/  cri_txdeemph_override_5_0; int /*<<< orphan*/  cri_txdeemph_override_17_12; } ;
struct drm_i915_private {int dummy; } ;
typedef  enum port { ____Placeholder_port } port ;

/* Variables and functions */
 int FUNC0 (struct icl_mg_phy_ddi_buf_trans*) ; 
 int CFG_AMI_CK_DIV_OVERRIDE_EN ; 
 int FUNC1 (int) ; 
 int CFG_AMI_CK_DIV_OVERRIDE_VAL_MASK ; 
 int CFG_LOW_RATE_LKREN_EN ; 
 int CRI_CALCINIT ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int CRI_TXDEEMPH_OVERRIDE_11_6_MASK ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int CRI_TXDEEMPH_OVERRIDE_17_12_MASK ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int CRI_TXDEEMPH_OVERRIDE_5_0_MASK ; 
 int CRI_TXDEEMPH_OVERRIDE_EN ; 
 int CRI_USE_FS32 ; 
 int /*<<< orphan*/  FUNC5 (char*,int,int) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int,int) ; 
 int /*<<< orphan*/  FUNC9 (int,int) ; 
 int /*<<< orphan*/  FUNC10 (int,int) ; 
 int /*<<< orphan*/  FUNC11 (int,int) ; 
 int /*<<< orphan*/  FUNC12 (int,int) ; 
 int /*<<< orphan*/  FUNC13 (int,int) ; 
 int /*<<< orphan*/  FUNC14 (int,int) ; 
 int /*<<< orphan*/  FUNC15 (int,int) ; 
 int /*<<< orphan*/  FUNC16 (int,int) ; 
 int /*<<< orphan*/  FUNC17 (int,int) ; 
 int /*<<< orphan*/  FUNC18 (int,int) ; 
 struct icl_mg_phy_ddi_buf_trans* icl_mg_phy_ddi_translations ; 
 struct drm_i915_private* FUNC19 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC20(struct intel_encoder *encoder,
					   int link_clock,
					   u32 level)
{
	struct drm_i915_private *dev_priv = FUNC19(encoder->base.dev);
	enum port port = encoder->port;
	const struct icl_mg_phy_ddi_buf_trans *ddi_translations;
	u32 n_entries, val;
	int ln;

	n_entries = FUNC0(icl_mg_phy_ddi_translations);
	ddi_translations = icl_mg_phy_ddi_translations;
	/* The table does not have values for level 3 and level 9. */
	if (level >= n_entries || level == 3 || level == 9) {
		FUNC5("DDI translation not found for level %d. Using %d instead.",
			      level, n_entries - 2);
		level = n_entries - 2;
	}

	/* Set MG_TX_LINK_PARAMS cri_use_fs32 to 0. */
	for (ln = 0; ln < 2; ln++) {
		val = FUNC6(FUNC11(ln, port));
		val &= ~CRI_USE_FS32;
		FUNC7(FUNC11(ln, port), val);

		val = FUNC6(FUNC16(ln, port));
		val &= ~CRI_USE_FS32;
		FUNC7(FUNC16(ln, port), val);
	}

	/* Program MG_TX_SWINGCTRL with values from vswing table */
	for (ln = 0; ln < 2; ln++) {
		val = FUNC6(FUNC13(ln, port));
		val &= ~CRI_TXDEEMPH_OVERRIDE_17_12_MASK;
		val |= FUNC3(
			ddi_translations[level].cri_txdeemph_override_17_12);
		FUNC7(FUNC13(ln, port), val);

		val = FUNC6(FUNC18(ln, port));
		val &= ~CRI_TXDEEMPH_OVERRIDE_17_12_MASK;
		val |= FUNC3(
			ddi_translations[level].cri_txdeemph_override_17_12);
		FUNC7(FUNC18(ln, port), val);
	}

	/* Program MG_TX_DRVCTRL with values from vswing table */
	for (ln = 0; ln < 2; ln++) {
		val = FUNC6(FUNC10(ln, port));
		val &= ~(CRI_TXDEEMPH_OVERRIDE_11_6_MASK |
			 CRI_TXDEEMPH_OVERRIDE_5_0_MASK);
		val |= FUNC4(
			ddi_translations[level].cri_txdeemph_override_5_0) |
			FUNC2(
				ddi_translations[level].cri_txdeemph_override_11_6) |
			CRI_TXDEEMPH_OVERRIDE_EN;
		FUNC7(FUNC10(ln, port), val);

		val = FUNC6(FUNC15(ln, port));
		val &= ~(CRI_TXDEEMPH_OVERRIDE_11_6_MASK |
			 CRI_TXDEEMPH_OVERRIDE_5_0_MASK);
		val |= FUNC4(
			ddi_translations[level].cri_txdeemph_override_5_0) |
			FUNC2(
				ddi_translations[level].cri_txdeemph_override_11_6) |
			CRI_TXDEEMPH_OVERRIDE_EN;
		FUNC7(FUNC15(ln, port), val);

		/* FIXME: Program CRI_LOADGEN_SEL after the spec is updated */
	}

	/*
	 * Program MG_CLKHUB<LN, port being used> with value from frequency table
	 * In case of Legacy mode on MG PHY, both TX1 and TX2 enabled so use the
	 * values from table for which TX1 and TX2 enabled.
	 */
	for (ln = 0; ln < 2; ln++) {
		val = FUNC6(FUNC8(ln, port));
		if (link_clock < 300000)
			val |= CFG_LOW_RATE_LKREN_EN;
		else
			val &= ~CFG_LOW_RATE_LKREN_EN;
		FUNC7(FUNC8(ln, port), val);
	}

	/* Program the MG_TX_DCC<LN, port being used> based on the link frequency */
	for (ln = 0; ln < 2; ln++) {
		val = FUNC6(FUNC9(ln, port));
		val &= ~CFG_AMI_CK_DIV_OVERRIDE_VAL_MASK;
		if (link_clock <= 500000) {
			val &= ~CFG_AMI_CK_DIV_OVERRIDE_EN;
		} else {
			val |= CFG_AMI_CK_DIV_OVERRIDE_EN |
				FUNC1(1);
		}
		FUNC7(FUNC9(ln, port), val);

		val = FUNC6(FUNC14(ln, port));
		val &= ~CFG_AMI_CK_DIV_OVERRIDE_VAL_MASK;
		if (link_clock <= 500000) {
			val &= ~CFG_AMI_CK_DIV_OVERRIDE_EN;
		} else {
			val |= CFG_AMI_CK_DIV_OVERRIDE_EN |
				FUNC1(1);
		}
		FUNC7(FUNC14(ln, port), val);
	}

	/* Program MG_TX_PISO_READLOAD with values from vswing table */
	for (ln = 0; ln < 2; ln++) {
		val = FUNC6(FUNC12(ln, port));
		val |= CRI_CALCINIT;
		FUNC7(FUNC12(ln, port), val);

		val = FUNC6(FUNC17(ln, port));
		val |= CRI_CALCINIT;
		FUNC7(FUNC17(ln, port), val);
	}
}