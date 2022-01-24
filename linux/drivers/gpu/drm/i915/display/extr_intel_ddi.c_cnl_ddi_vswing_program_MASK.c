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
struct drm_i915_private {int dummy; } ;
struct cnl_ddi_buf_trans {int /*<<< orphan*/  dw7_n_scalar; int /*<<< orphan*/  dw4_cursor_coeff; int /*<<< orphan*/  dw4_post_cursor_2; int /*<<< orphan*/  dw4_post_cursor_1; int /*<<< orphan*/  dw2_swing_sel; } ;
typedef  enum port { ____Placeholder_port } port ;
typedef  enum intel_output_type { ____Placeholder_intel_output_type } intel_output_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int CURSOR_COEFF_MASK ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 
 int INTEL_OUTPUT_EDP ; 
 int INTEL_OUTPUT_HDMI ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int N_SCALAR_MASK ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int POST_CURSOR_1_MASK ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 int POST_CURSOR_2_MASK ; 
 int FUNC13 (int) ; 
 int RCOMP_SCALAR_MASK ; 
 int FUNC14 (int) ; 
 int RTERM_SELECT_MASK ; 
 int FUNC15 (int) ; 
 int SCALING_MODE_SEL_MASK ; 
 int FUNC16 (int /*<<< orphan*/ ) ; 
 int SWING_SEL_LOWER_MASK ; 
 int FUNC17 (int /*<<< orphan*/ ) ; 
 int SWING_SEL_UPPER_MASK ; 
 int TAP3_DISABLE ; 
 scalar_t__ FUNC18 (int) ; 
 struct cnl_ddi_buf_trans* FUNC19 (struct drm_i915_private*,int*) ; 
 struct cnl_ddi_buf_trans* FUNC20 (struct drm_i915_private*,int*) ; 
 struct cnl_ddi_buf_trans* FUNC21 (struct drm_i915_private*,int*) ; 
 struct drm_i915_private* FUNC22 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC23(struct intel_encoder *encoder,
				   int level, enum intel_output_type type)
{
	struct drm_i915_private *dev_priv = FUNC22(encoder->base.dev);
	const struct cnl_ddi_buf_trans *ddi_translations;
	enum port port = encoder->port;
	int n_entries, ln;
	u32 val;

	if (type == INTEL_OUTPUT_HDMI)
		ddi_translations = FUNC21(dev_priv, &n_entries);
	else if (type == INTEL_OUTPUT_EDP)
		ddi_translations = FUNC20(dev_priv, &n_entries);
	else
		ddi_translations = FUNC19(dev_priv, &n_entries);

	if (FUNC18(!ddi_translations))
		return;
	if (FUNC18(level >= n_entries))
		level = n_entries - 1;

	/* Set PORT_TX_DW5 Scaling Mode Sel to 010b. */
	val = FUNC8(FUNC4(port));
	val &= ~SCALING_MODE_SEL_MASK;
	val |= FUNC15(2);
	FUNC9(FUNC3(port), val);

	/* Program PORT_TX_DW2 */
	val = FUNC8(FUNC1(port));
	val &= ~(SWING_SEL_LOWER_MASK | SWING_SEL_UPPER_MASK |
		 RCOMP_SCALAR_MASK);
	val |= FUNC17(ddi_translations[level].dw2_swing_sel);
	val |= FUNC16(ddi_translations[level].dw2_swing_sel);
	/* Rcomp scalar is fixed as 0x98 for every table entry */
	val |= FUNC13(0x98);
	FUNC9(FUNC0(port), val);

	/* Program PORT_TX_DW4 */
	/* We cannot write to GRP. It would overrite individual loadgen */
	for (ln = 0; ln < 4; ln++) {
		val = FUNC8(FUNC2(ln, port));
		val &= ~(POST_CURSOR_1_MASK | POST_CURSOR_2_MASK |
			 CURSOR_COEFF_MASK);
		val |= FUNC11(ddi_translations[level].dw4_post_cursor_1);
		val |= FUNC12(ddi_translations[level].dw4_post_cursor_2);
		val |= FUNC7(ddi_translations[level].dw4_cursor_coeff);
		FUNC9(FUNC2(ln, port), val);
	}

	/* Program PORT_TX_DW5 */
	/* All DW5 values are fixed for every table entry */
	val = FUNC8(FUNC4(port));
	val &= ~RTERM_SELECT_MASK;
	val |= FUNC14(6);
	val |= TAP3_DISABLE;
	FUNC9(FUNC3(port), val);

	/* Program PORT_TX_DW7 */
	val = FUNC8(FUNC6(port));
	val &= ~N_SCALAR_MASK;
	val |= FUNC10(ddi_translations[level].dw7_n_scalar);
	FUNC9(FUNC5(port), val);
}