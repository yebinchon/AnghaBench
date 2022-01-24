#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct intel_shared_dpll {TYPE_3__* info; } ;
struct TYPE_8__ {int dpll; } ;
struct intel_crtc_state {int cpu_transcoder; int pipe_bpp; int limited_color_range; int gamma_mode; int csc_mode; int has_pch_encoder; int fdi_lanes; int pixel_multiplier; TYPE_4__ dpll_hw_state; struct intel_shared_dpll* shared_dpll; int /*<<< orphan*/  output_format; } ;
struct TYPE_5__ {struct drm_device* dev; } ;
struct intel_crtc {scalar_t__ pipe; TYPE_1__ base; } ;
struct drm_i915_private {int dummy; } ;
struct drm_device {int dummy; } ;
typedef  int /*<<< orphan*/  intel_wakeref_t ;
typedef  enum transcoder { ____Placeholder_transcoder } transcoder ;
typedef  enum intel_dpll_id { ____Placeholder_intel_dpll_id } intel_dpll_id ;
typedef  enum intel_display_power_domain { ____Placeholder_intel_display_power_domain } intel_display_power_domain ;
struct TYPE_7__ {TYPE_2__* funcs; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* get_hw_state ) (struct drm_i915_private*,struct intel_shared_dpll*,TYPE_4__*) ;} ;

/* Variables and functions */
 int DPLL_ID_PCH_PLL_A ; 
 int DPLL_ID_PCH_PLL_B ; 
 int FDI_DP_PORT_WIDTH_MASK ; 
 int FDI_DP_PORT_WIDTH_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (struct drm_i915_private*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  INTEL_OUTPUT_FORMAT_RGB ; 
 int /*<<< orphan*/  PCH_DPLL_SEL ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
#define  PIPECONF_10BPC 131 
#define  PIPECONF_12BPC 130 
#define  PIPECONF_6BPC 129 
#define  PIPECONF_8BPC 128 
 int PIPECONF_BPC_MASK ; 
 int PIPECONF_COLOR_RANGE_SELECT ; 
 int PIPECONF_ENABLE ; 
 int PIPECONF_GAMMA_MODE_MASK_ILK ; 
 int PIPECONF_GAMMA_MODE_SHIFT ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int PLL_REF_SDVO_HDMI_MULTIPLIER_MASK ; 
 int PLL_REF_SDVO_HDMI_MULTIPLIER_SHIFT ; 
 int FUNC6 (scalar_t__) ; 
 int FUNC7 (scalar_t__) ; 
 int TRANS_ENABLE ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (struct intel_crtc_state*) ; 
 int /*<<< orphan*/  FUNC10 (struct intel_crtc_state*) ; 
 int /*<<< orphan*/  FUNC11 (struct drm_i915_private*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct drm_i915_private*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct intel_crtc*,struct intel_crtc_state*) ; 
 int /*<<< orphan*/  FUNC14 (struct intel_crtc*,struct intel_crtc_state*) ; 
 struct intel_shared_dpll* FUNC15 (struct drm_i915_private*,int) ; 
 int /*<<< orphan*/  FUNC16 (struct intel_crtc*,struct intel_crtc_state*) ; 
 int /*<<< orphan*/  FUNC17 (struct intel_crtc*,struct intel_crtc_state*) ; 
 int /*<<< orphan*/  FUNC18 (struct intel_crtc*,struct intel_crtc_state*) ; 
 int /*<<< orphan*/  FUNC19 (struct drm_i915_private*,struct intel_shared_dpll*,TYPE_4__*) ; 
 struct drm_i915_private* FUNC20 (struct drm_device*) ; 

__attribute__((used)) static bool FUNC21(struct intel_crtc *crtc,
				     struct intel_crtc_state *pipe_config)
{
	struct drm_device *dev = crtc->base.dev;
	struct drm_i915_private *dev_priv = FUNC20(dev);
	enum intel_display_power_domain power_domain;
	intel_wakeref_t wakeref;
	u32 tmp;
	bool ret;

	power_domain = FUNC6(crtc->pipe);
	wakeref = FUNC11(dev_priv, power_domain);
	if (!wakeref)
		return false;

	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
	pipe_config->cpu_transcoder = (enum transcoder) crtc->pipe;
	pipe_config->shared_dpll = NULL;

	ret = false;
	tmp = FUNC2(FUNC4(crtc->pipe));
	if (!(tmp & PIPECONF_ENABLE))
		goto out;

	switch (tmp & PIPECONF_BPC_MASK) {
	case PIPECONF_6BPC:
		pipe_config->pipe_bpp = 18;
		break;
	case PIPECONF_8BPC:
		pipe_config->pipe_bpp = 24;
		break;
	case PIPECONF_10BPC:
		pipe_config->pipe_bpp = 30;
		break;
	case PIPECONF_12BPC:
		pipe_config->pipe_bpp = 36;
		break;
	default:
		break;
	}

	if (tmp & PIPECONF_COLOR_RANGE_SELECT)
		pipe_config->limited_color_range = true;

	pipe_config->gamma_mode = (tmp & PIPECONF_GAMMA_MODE_MASK_ILK) >>
		PIPECONF_GAMMA_MODE_SHIFT;

	pipe_config->csc_mode = FUNC2(FUNC5(crtc->pipe));

	FUNC9(pipe_config);
	FUNC10(pipe_config);

	if (FUNC2(FUNC3(crtc->pipe)) & TRANS_ENABLE) {
		struct intel_shared_dpll *pll;
		enum intel_dpll_id pll_id;

		pipe_config->has_pch_encoder = true;

		tmp = FUNC2(FUNC0(crtc->pipe));
		pipe_config->fdi_lanes = ((FDI_DP_PORT_WIDTH_MASK & tmp) >>
					  FDI_DP_PORT_WIDTH_SHIFT) + 1;

		FUNC16(crtc, pipe_config);

		if (FUNC1(dev_priv)) {
			/*
			 * The pipe->pch transcoder and pch transcoder->pll
			 * mapping is fixed.
			 */
			pll_id = (enum intel_dpll_id) crtc->pipe;
		} else {
			tmp = FUNC2(PCH_DPLL_SEL);
			if (tmp & FUNC7(crtc->pipe))
				pll_id = DPLL_ID_PCH_PLL_B;
			else
				pll_id= DPLL_ID_PCH_PLL_A;
		}

		pipe_config->shared_dpll =
			FUNC15(dev_priv, pll_id);
		pll = pipe_config->shared_dpll;

		FUNC8(!pll->info->funcs->get_hw_state(dev_priv, pll,
						&pipe_config->dpll_hw_state));

		tmp = pipe_config->dpll_hw_state.dpll;
		pipe_config->pixel_multiplier =
			((tmp & PLL_REF_SDVO_HDMI_MULTIPLIER_MASK)
			 >> PLL_REF_SDVO_HDMI_MULTIPLIER_SHIFT) + 1;

		FUNC18(crtc, pipe_config);
	} else {
		pipe_config->pixel_multiplier = 1;
	}

	FUNC14(crtc, pipe_config);
	FUNC13(crtc, pipe_config);

	FUNC17(crtc, pipe_config);

	ret = true;

out:
	FUNC12(dev_priv, power_domain, wakeref);

	return ret;
}