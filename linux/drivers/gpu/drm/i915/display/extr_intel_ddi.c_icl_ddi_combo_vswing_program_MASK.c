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
typedef  size_t u32 ;
struct drm_i915_private {int dummy; } ;
struct cnl_ddi_buf_trans {int /*<<< orphan*/  dw7_n_scalar; int /*<<< orphan*/  dw4_cursor_coeff; int /*<<< orphan*/  dw4_post_cursor_2; int /*<<< orphan*/  dw4_post_cursor_1; int /*<<< orphan*/  dw2_swing_sel; } ;
typedef  enum phy { ____Placeholder_phy } phy ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 size_t CURSOR_COEFF_MASK ; 
 int /*<<< orphan*/  FUNC1 (char*,size_t,size_t) ; 
 size_t FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 size_t FUNC11 (int /*<<< orphan*/ ) ; 
 size_t N_SCALAR_MASK ; 
 size_t FUNC12 (int /*<<< orphan*/ ) ; 
 size_t POST_CURSOR_1_MASK ; 
 size_t FUNC13 (int /*<<< orphan*/ ) ; 
 size_t POST_CURSOR_2_MASK ; 
 size_t FUNC14 (int) ; 
 size_t RCOMP_SCALAR_MASK ; 
 size_t FUNC15 (int) ; 
 size_t RTERM_SELECT_MASK ; 
 size_t FUNC16 (int) ; 
 size_t SCALING_MODE_SEL_MASK ; 
 size_t FUNC17 (int /*<<< orphan*/ ) ; 
 size_t SWING_SEL_LOWER_MASK ; 
 size_t FUNC18 (int /*<<< orphan*/ ) ; 
 size_t SWING_SEL_UPPER_MASK ; 
 size_t TAP2_DISABLE ; 
 size_t TAP3_DISABLE ; 
 struct cnl_ddi_buf_trans* FUNC19 (struct drm_i915_private*,int,int,size_t*) ; 

__attribute__((used)) static void FUNC20(struct drm_i915_private *dev_priv,
					u32 level, enum phy phy, int type,
					int rate)
{
	const struct cnl_ddi_buf_trans *ddi_translations = NULL;
	u32 n_entries, val;
	int ln;

	ddi_translations = FUNC19(dev_priv, type, rate,
						   &n_entries);
	if (!ddi_translations)
		return;

	if (level >= n_entries) {
		FUNC1("DDI translation not found for level %d. Using %d instead.", level, n_entries - 1);
		level = n_entries - 1;
	}

	/* Set PORT_TX_DW5 */
	val = FUNC2(FUNC8(phy));
	val &= ~(SCALING_MODE_SEL_MASK | RTERM_SELECT_MASK |
		  TAP2_DISABLE | TAP3_DISABLE);
	val |= FUNC16(0x2);
	val |= FUNC15(0x6);
	val |= TAP3_DISABLE;
	FUNC3(FUNC7(phy), val);

	/* Program PORT_TX_DW2 */
	val = FUNC2(FUNC5(phy));
	val &= ~(SWING_SEL_LOWER_MASK | SWING_SEL_UPPER_MASK |
		 RCOMP_SCALAR_MASK);
	val |= FUNC18(ddi_translations[level].dw2_swing_sel);
	val |= FUNC17(ddi_translations[level].dw2_swing_sel);
	/* Program Rcomp scalar for every table entry */
	val |= FUNC14(0x98);
	FUNC3(FUNC4(phy), val);

	/* Program PORT_TX_DW4 */
	/* We cannot write to GRP. It would overwrite individual loadgen. */
	for (ln = 0; ln <= 3; ln++) {
		val = FUNC2(FUNC6(ln, phy));
		val &= ~(POST_CURSOR_1_MASK | POST_CURSOR_2_MASK |
			 CURSOR_COEFF_MASK);
		val |= FUNC12(ddi_translations[level].dw4_post_cursor_1);
		val |= FUNC13(ddi_translations[level].dw4_post_cursor_2);
		val |= FUNC0(ddi_translations[level].dw4_cursor_coeff);
		FUNC3(FUNC6(ln, phy), val);
	}

	/* Program PORT_TX_DW7 */
	val = FUNC2(FUNC10(phy));
	val &= ~N_SCALAR_MASK;
	val |= FUNC11(ddi_translations[level].dw7_n_scalar);
	FUNC3(FUNC9(phy), val);
}