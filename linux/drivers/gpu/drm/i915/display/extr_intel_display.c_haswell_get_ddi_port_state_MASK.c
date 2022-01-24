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
struct intel_shared_dpll {TYPE_3__* info; } ;
struct intel_crtc_state {int has_pch_encoder; int fdi_lanes; int /*<<< orphan*/  dpll_hw_state; struct intel_shared_dpll* shared_dpll; int /*<<< orphan*/  cpu_transcoder; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct intel_crtc {TYPE_1__ base; } ;
struct drm_i915_private {int dummy; } ;
typedef  enum port { ____Placeholder_port } port ;
struct TYPE_6__ {TYPE_2__* funcs; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* get_hw_state ) (struct drm_i915_private*,struct intel_shared_dpll*,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int FDI_DP_PORT_WIDTH_MASK ; 
 int FDI_DP_PORT_WIDTH_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct drm_i915_private*) ; 
 scalar_t__ FUNC3 (struct drm_i915_private*) ; 
 scalar_t__ FUNC4 (struct drm_i915_private*) ; 
 scalar_t__ FUNC5 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  LPT_TRANSCONF ; 
 int /*<<< orphan*/  PIPE_A ; 
 int PORT_E ; 
 int FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int) ; 
 int TRANS_ENABLE ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (struct drm_i915_private*,int,struct intel_crtc_state*) ; 
 int /*<<< orphan*/  FUNC11 (struct drm_i915_private*,int,struct intel_crtc_state*) ; 
 int /*<<< orphan*/  FUNC12 (struct drm_i915_private*,int,struct intel_crtc_state*) ; 
 int /*<<< orphan*/  FUNC13 (struct drm_i915_private*,int,struct intel_crtc_state*) ; 
 int /*<<< orphan*/  FUNC14 (struct intel_crtc*,struct intel_crtc_state*) ; 
 int /*<<< orphan*/  FUNC15 (struct drm_i915_private*,int,struct intel_crtc_state*) ; 
 int /*<<< orphan*/  FUNC16 (struct drm_i915_private*,struct intel_shared_dpll*,int /*<<< orphan*/ *) ; 
 struct drm_i915_private* FUNC17 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC18(struct intel_crtc *crtc,
				       struct intel_crtc_state *pipe_config)
{
	struct drm_i915_private *dev_priv = FUNC17(crtc->base.dev);
	struct intel_shared_dpll *pll;
	enum port port;
	u32 tmp;

	tmp = FUNC1(FUNC7(pipe_config->cpu_transcoder));

	if (FUNC2(dev_priv) >= 12)
		port = FUNC6(tmp);
	else
		port = FUNC8(tmp);

	if (FUNC2(dev_priv) >= 11)
		FUNC13(dev_priv, port, pipe_config);
	else if (FUNC3(dev_priv))
		FUNC11(dev_priv, port, pipe_config);
	else if (FUNC4(dev_priv))
		FUNC15(dev_priv, port, pipe_config);
	else if (FUNC5(dev_priv))
		FUNC10(dev_priv, port, pipe_config);
	else
		FUNC12(dev_priv, port, pipe_config);

	pll = pipe_config->shared_dpll;
	if (pll) {
		FUNC9(!pll->info->funcs->get_hw_state(dev_priv, pll,
						&pipe_config->dpll_hw_state));
	}

	/*
	 * Haswell has only FDI/PCH transcoder A. It is which is connected to
	 * DDI E. So just check whether this pipe is wired to DDI E and whether
	 * the PCH transcoder is on.
	 */
	if (FUNC2(dev_priv) < 9 &&
	    (port == PORT_E) && FUNC1(LPT_TRANSCONF) & TRANS_ENABLE) {
		pipe_config->has_pch_encoder = true;

		tmp = FUNC1(FUNC0(PIPE_A));
		pipe_config->fdi_lanes = ((FDI_DP_PORT_WIDTH_MASK & tmp) >>
					  FDI_DP_PORT_WIDTH_SHIFT) + 1;

		FUNC14(crtc, pipe_config);
	}
}