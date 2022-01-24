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
typedef  int u32 ;
struct drm_i915_private {int dummy; } ;
typedef  enum port { ____Placeholder_port } port ;
typedef  enum dpio_phy { ____Placeholder_dpio_phy } dpio_phy ;
typedef  enum dpio_channel { ____Placeholder_dpio_channel } dpio_channel ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 
 int /*<<< orphan*/  FUNC7 (int,int) ; 
 int DEEMPH_SHIFT ; 
 int DE_EMPHASIS ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int) ; 
 int MARGIN_000 ; 
 int MARGIN_000_SHIFT ; 
 int SCALE_DCOMP_METHOD ; 
 int TX1_SWING_CALC_INIT ; 
 int TX2_SWING_CALC_INIT ; 
 int UNIQUE_TRANGE_EN_METHOD ; 
 int UNIQ_TRANS_SCALE ; 
 int UNIQ_TRANS_SCALE_SHIFT ; 
 int /*<<< orphan*/  FUNC11 (struct drm_i915_private*,int,int*,int*) ; 

void FUNC12(struct drm_i915_private *dev_priv,
				  enum port port, u32 margin, u32 scale,
				  u32 enable, u32 deemphasis)
{
	u32 val;
	enum dpio_phy phy;
	enum dpio_channel ch;

	FUNC11(dev_priv, port, &phy, &ch);

	/*
	 * While we write to the group register to program all lanes at once we
	 * can read only lane registers and we pick lanes 0/1 for that.
	 */
	val = FUNC9(FUNC1(phy, ch));
	val &= ~(TX2_SWING_CALC_INIT | TX1_SWING_CALC_INIT);
	FUNC10(FUNC0(phy, ch), val);

	val = FUNC9(FUNC3(phy, ch));
	val &= ~(MARGIN_000 | UNIQ_TRANS_SCALE);
	val |= margin << MARGIN_000_SHIFT | scale << UNIQ_TRANS_SCALE_SHIFT;
	FUNC10(FUNC2(phy, ch), val);

	val = FUNC9(FUNC5(phy, ch));
	val &= ~SCALE_DCOMP_METHOD;
	if (enable)
		val |= SCALE_DCOMP_METHOD;

	if ((val & UNIQUE_TRANGE_EN_METHOD) && !(val & SCALE_DCOMP_METHOD))
		FUNC8("Disabled scaling while ouniqetrangenmethod was set");

	FUNC10(FUNC4(phy, ch), val);

	val = FUNC9(FUNC7(phy, ch));
	val &= ~DE_EMPHASIS;
	val |= deemphasis << DEEMPH_SHIFT;
	FUNC10(FUNC6(phy, ch), val);

	val = FUNC9(FUNC1(phy, ch));
	val |= TX2_SWING_CALC_INIT | TX1_SWING_CALC_INIT;
	FUNC10(FUNC0(phy, ch), val);
}