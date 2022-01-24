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
typedef  int u32 ;
struct TYPE_4__ {int dpll; } ;
struct intel_crtc_state {int cpu_transcoder; int /*<<< orphan*/  port_clock; TYPE_2__ dpll_hw_state; } ;
struct TYPE_3__ {struct drm_device* dev; } ;
struct intel_crtc {TYPE_1__ base; } ;
struct drm_i915_private {int dummy; } ;
struct drm_device {int dummy; } ;
struct dpll {int m1; int m2; int n; int p1; int p2; } ;
typedef  enum dpio_channel { ____Placeholder_dpio_channel } dpio_channel ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int DPIO_CHV_FRAC_DIV_EN ; 
 int DPIO_CHV_M1_DIV_BY_2 ; 
 int DPIO_CHV_N_DIV_SHIFT ; 
 int DPIO_CHV_P1_DIV_SHIFT ; 
 int DPIO_CHV_P2_DIV_SHIFT ; 
 int DPLL_VCO_ENABLE ; 
 int /*<<< orphan*/  FUNC5 (int,struct dpll*) ; 
 struct drm_i915_private* FUNC6 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_i915_private*) ; 
 int FUNC9 (struct drm_i915_private*,int,int /*<<< orphan*/ ) ; 
 int FUNC10 (int) ; 

__attribute__((used)) static void FUNC11(struct intel_crtc *crtc,
			       struct intel_crtc_state *pipe_config)
{
	struct drm_device *dev = crtc->base.dev;
	struct drm_i915_private *dev_priv = FUNC6(dev);
	int pipe = pipe_config->cpu_transcoder;
	enum dpio_channel port = FUNC10(pipe);
	struct dpll clock;
	u32 cmn_dw13, pll_dw0, pll_dw1, pll_dw2, pll_dw3;
	int refclk = 100000;

	/* In case of DSI, DPLL will not be used */
	if ((pipe_config->dpll_hw_state.dpll & DPLL_VCO_ENABLE) == 0)
		return;

	FUNC7(dev_priv);
	cmn_dw13 = FUNC9(dev_priv, pipe, FUNC0(port));
	pll_dw0 = FUNC9(dev_priv, pipe, FUNC1(port));
	pll_dw1 = FUNC9(dev_priv, pipe, FUNC2(port));
	pll_dw2 = FUNC9(dev_priv, pipe, FUNC3(port));
	pll_dw3 = FUNC9(dev_priv, pipe, FUNC4(port));
	FUNC8(dev_priv);

	clock.m1 = (pll_dw1 & 0x7) == DPIO_CHV_M1_DIV_BY_2 ? 2 : 0;
	clock.m2 = (pll_dw0 & 0xff) << 22;
	if (pll_dw3 & DPIO_CHV_FRAC_DIV_EN)
		clock.m2 |= pll_dw2 & 0x3fffff;
	clock.n = (pll_dw1 >> DPIO_CHV_N_DIV_SHIFT) & 0xf;
	clock.p1 = (cmn_dw13 >> DPIO_CHV_P1_DIV_SHIFT) & 0x7;
	clock.p2 = (cmn_dw13 >> DPIO_CHV_P2_DIV_SHIFT) & 0x1f;

	pipe_config->port_clock = FUNC5(refclk, &clock);
}