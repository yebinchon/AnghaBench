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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;
struct intel_encoder {TYPE_2__ base; } ;
struct TYPE_6__ {scalar_t__ dsc_split; int /*<<< orphan*/  compression_enable; } ;
struct TYPE_4__ {int /*<<< orphan*/  crtc; } ;
struct intel_crtc_state {scalar_t__ cpu_transcoder; TYPE_3__ dsc_params; TYPE_1__ base; } ;
struct intel_crtc {int pipe; } ;
struct drm_i915_private {int dummy; } ;
typedef  int /*<<< orphan*/  i915_reg_t ;
typedef  enum pipe { ____Placeholder_pipe } pipe ;

/* Variables and functions */
 int /*<<< orphan*/  DSS_CTL1 ; 
 int /*<<< orphan*/  DSS_CTL2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  JOINER_ENABLE ; 
 int /*<<< orphan*/  LEFT_BRANCH_VDSC_ENABLE ; 
 int /*<<< orphan*/  RIGHT_BRANCH_VDSC_ENABLE ; 
 scalar_t__ TRANSCODER_EDP ; 
 int /*<<< orphan*/  FUNC3 (struct intel_encoder*,struct intel_crtc_state const*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_i915_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct intel_encoder*,struct intel_crtc_state const*) ; 
 int /*<<< orphan*/  FUNC6 (struct intel_crtc_state const*) ; 
 struct drm_i915_private* FUNC7 (int /*<<< orphan*/ ) ; 
 struct intel_crtc* FUNC8 (int /*<<< orphan*/ ) ; 

void FUNC9(struct intel_encoder *encoder,
		      const struct intel_crtc_state *crtc_state)
{
	struct intel_crtc *crtc = FUNC8(crtc_state->base.crtc);
	struct drm_i915_private *dev_priv = FUNC7(encoder->base.dev);
	enum pipe pipe = crtc->pipe;
	i915_reg_t dss_ctl1_reg, dss_ctl2_reg;
	u32 dss_ctl1_val = 0;
	u32 dss_ctl2_val = 0;

	if (!crtc_state->dsc_params.compression_enable)
		return;

	/* Enable Power wells for VDSC/joining */
	FUNC4(dev_priv,
				FUNC6(crtc_state));

	FUNC3(encoder, crtc_state);

	FUNC5(encoder, crtc_state);

	if (crtc_state->cpu_transcoder == TRANSCODER_EDP) {
		dss_ctl1_reg = DSS_CTL1;
		dss_ctl2_reg = DSS_CTL2;
	} else {
		dss_ctl1_reg = FUNC1(pipe);
		dss_ctl2_reg = FUNC2(pipe);
	}
	dss_ctl2_val |= LEFT_BRANCH_VDSC_ENABLE;
	if (crtc_state->dsc_params.dsc_split) {
		dss_ctl2_val |= RIGHT_BRANCH_VDSC_ENABLE;
		dss_ctl1_val |= JOINER_ENABLE;
	}
	FUNC0(dss_ctl1_reg, dss_ctl1_val);
	FUNC0(dss_ctl2_reg, dss_ctl2_val);
}