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
typedef  enum pipe { ____Placeholder_pipe } pipe ;
typedef  enum dpio_channel { ____Placeholder_dpio_channel } dpio_channel ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int DPIO_DCLKP_EN ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int DPLL_INTEGRATED_CRI_CLK_VLV ; 
 int DPLL_REF_CLK_ENABLE_VLV ; 
 int DPLL_SSC_REF_CLK_CHV ; 
 int DPLL_VGA_MODE_DIS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int PIPE_A ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_i915_private*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_i915_private*) ; 
 int FUNC7 (struct drm_i915_private*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_i915_private*,int,int /*<<< orphan*/ ,int) ; 
 int FUNC9 (int) ; 

__attribute__((used)) static void FUNC10(struct drm_i915_private *dev_priv, enum pipe pipe)
{
	enum dpio_channel port = FUNC9(pipe);
	u32 val;

	/* Make sure the pipe isn't still relying on us */
	FUNC4(dev_priv, pipe);

	val = DPLL_SSC_REF_CLK_CHV |
		DPLL_REF_CLK_ENABLE_VLV | DPLL_VGA_MODE_DIS;
	if (pipe != PIPE_A)
		val |= DPLL_INTEGRATED_CRI_CLK_VLV;

	FUNC2(FUNC1(pipe), val);
	FUNC3(FUNC1(pipe));

	FUNC5(dev_priv);

	/* Disable 10bit clock to display controller */
	val = FUNC7(dev_priv, pipe, FUNC0(port));
	val &= ~DPIO_DCLKP_EN;
	FUNC8(dev_priv, pipe, FUNC0(port), val);

	FUNC6(dev_priv);
}