#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_6__ {int n; int m1; int m2; int p1; int p2; } ;
struct TYPE_5__ {int dpll; } ;
struct intel_crtc_state {int port_clock; TYPE_3__ dpll; TYPE_2__ dpll_hw_state; } ;
struct TYPE_4__ {struct drm_device* dev; } ;
struct intel_crtc {int pipe; TYPE_1__ base; } ;
struct drm_i915_private {int dummy; } ;
struct drm_device {int dummy; } ;
typedef  enum pipe { ____Placeholder_pipe } pipe ;

/* Variables and functions */
 int DPIO_ENABLE_CALIBRATION ; 
 int DPIO_K_SHIFT ; 
 int DPIO_M1DIV_SHIFT ; 
 int DPIO_M2DIV_MASK ; 
 int DPIO_N_SHIFT ; 
 int DPIO_P1_SHIFT ; 
 int DPIO_P2_SHIFT ; 
 int DPIO_POST_DIV_HDMIDP ; 
 int DPIO_POST_DIV_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int DPLL_EXT_BUFFER_ENABLE_VLV ; 
 int DPLL_VCO_ENABLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  INTEL_OUTPUT_ANALOG ; 
 int /*<<< orphan*/  INTEL_OUTPUT_HDMI ; 
 int PIPE_A ; 
 int PIPE_B ; 
 int /*<<< orphan*/  VLV_CMN_DW0 ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  VLV_PLL_DW9_BCAST ; 
 scalar_t__ FUNC8 (struct intel_crtc_state const*) ; 
 scalar_t__ FUNC9 (struct intel_crtc_state const*,int /*<<< orphan*/ ) ; 
 struct drm_i915_private* FUNC10 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC12 (struct drm_i915_private*) ; 
 int FUNC13 (struct drm_i915_private*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct drm_i915_private*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (struct drm_i915_private*,int) ; 

__attribute__((used)) static void FUNC16(struct intel_crtc *crtc,
			    const struct intel_crtc_state *pipe_config)
{
	struct drm_device *dev = crtc->base.dev;
	struct drm_i915_private *dev_priv = FUNC10(dev);
	enum pipe pipe = crtc->pipe;
	u32 mdiv;
	u32 bestn, bestm1, bestm2, bestp1, bestp2;
	u32 coreclk, reg_val;

	/* Enable Refclk */
	FUNC1(FUNC0(pipe),
		   pipe_config->dpll_hw_state.dpll &
		   ~(DPLL_VCO_ENABLE | DPLL_EXT_BUFFER_ENABLE_VLV));

	/* No need to actually set up the DPLL with DSI */
	if ((pipe_config->dpll_hw_state.dpll & DPLL_VCO_ENABLE) == 0)
		return;

	FUNC11(dev_priv);

	bestn = pipe_config->dpll.n;
	bestm1 = pipe_config->dpll.m1;
	bestm2 = pipe_config->dpll.m2;
	bestp1 = pipe_config->dpll.p1;
	bestp2 = pipe_config->dpll.p2;

	/* See eDP HDMI DPIO driver vbios notes doc */

	/* PLL B needs special handling */
	if (pipe == PIPE_B)
		FUNC15(dev_priv, pipe);

	/* Set up Tx target for periodic Rcomp update */
	FUNC14(dev_priv, pipe, VLV_PLL_DW9_BCAST, 0x0100000f);

	/* Disable target IRef on PLL */
	reg_val = FUNC13(dev_priv, pipe, FUNC7(pipe));
	reg_val &= 0x00ffffff;
	FUNC14(dev_priv, pipe, FUNC7(pipe), reg_val);

	/* Disable fast lock */
	FUNC14(dev_priv, pipe, VLV_CMN_DW0, 0x610);

	/* Set idtafcrecal before PLL is enabled */
	mdiv = ((bestm1 << DPIO_M1DIV_SHIFT) | (bestm2 & DPIO_M2DIV_MASK));
	mdiv |= ((bestp1 << DPIO_P1_SHIFT) | (bestp2 << DPIO_P2_SHIFT));
	mdiv |= ((bestn << DPIO_N_SHIFT));
	mdiv |= (1 << DPIO_K_SHIFT);

	/*
	 * Post divider depends on pixel clock rate, DAC vs digital (and LVDS,
	 * but we don't support that).
	 * Note: don't use the DAC post divider as it seems unstable.
	 */
	mdiv |= (DPIO_POST_DIV_HDMIDP << DPIO_POST_DIV_SHIFT);
	FUNC14(dev_priv, pipe, FUNC4(pipe), mdiv);

	mdiv |= DPIO_ENABLE_CALIBRATION;
	FUNC14(dev_priv, pipe, FUNC4(pipe), mdiv);

	/* Set HBR and RBR LPF coefficients */
	if (pipe_config->port_clock == 162000 ||
	    FUNC9(pipe_config, INTEL_OUTPUT_ANALOG) ||
	    FUNC9(pipe_config, INTEL_OUTPUT_HDMI))
		FUNC14(dev_priv, pipe, FUNC2(pipe),
				 0x009f0003);
	else
		FUNC14(dev_priv, pipe, FUNC2(pipe),
				 0x00d0000f);

	if (FUNC8(pipe_config)) {
		/* Use SSC source */
		if (pipe == PIPE_A)
			FUNC14(dev_priv, pipe, FUNC5(pipe),
					 0x0df40000);
		else
			FUNC14(dev_priv, pipe, FUNC5(pipe),
					 0x0df70000);
	} else { /* HDMI or VGA */
		/* Use bend source */
		if (pipe == PIPE_A)
			FUNC14(dev_priv, pipe, FUNC5(pipe),
					 0x0df70000);
		else
			FUNC14(dev_priv, pipe, FUNC5(pipe),
					 0x0df40000);
	}

	coreclk = FUNC13(dev_priv, pipe, FUNC6(pipe));
	coreclk = (coreclk & 0x0000ff00) | 0x01c00000;
	if (FUNC8(pipe_config))
		coreclk |= 0x01000000;
	FUNC14(dev_priv, pipe, FUNC6(pipe), coreclk);

	FUNC14(dev_priv, pipe, FUNC3(pipe), 0x87871000);

	FUNC12(dev_priv);
}