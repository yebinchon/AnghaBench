#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_3__ {int /*<<< orphan*/  dpll; } ;
struct intel_crtc_state {TYPE_1__ dpll_hw_state; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct intel_crtc {int pipe; TYPE_2__ base; } ;
struct drm_i915_private {int dummy; } ;
typedef  enum pipe { ____Placeholder_pipe } pipe ;
typedef  enum dpio_channel { ____Placeholder_dpio_channel } dpio_channel ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DPIO_DCLKP_EN ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  DPLL_LOCK_VLV ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct drm_i915_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct drm_i915_private* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC9 (struct drm_i915_private*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct drm_i915_private*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC11 (int) ; 

__attribute__((used)) static void FUNC12(struct intel_crtc *crtc,
			    const struct intel_crtc_state *pipe_config)
{
	struct drm_i915_private *dev_priv = FUNC5(crtc->base.dev);
	enum pipe pipe = crtc->pipe;
	enum dpio_channel port = FUNC11(pipe);
	u32 tmp;

	FUNC7(dev_priv);

	/* Enable back the 10bit clock to display controller */
	tmp = FUNC9(dev_priv, pipe, FUNC0(port));
	tmp |= DPIO_DCLKP_EN;
	FUNC10(dev_priv, pipe, FUNC0(port), tmp);

	FUNC8(dev_priv);

	/*
	 * Need to wait > 100ns between dclkp clock enable bit and PLL enable.
	 */
	FUNC6(1);

	/* Enable PLL */
	FUNC3(FUNC1(pipe), pipe_config->dpll_hw_state.dpll);

	/* Check PLL is locked */
	if (FUNC4(dev_priv, FUNC1(pipe), DPLL_LOCK_VLV, 1))
		FUNC2("PLL %d failed to lock\n", pipe);
}