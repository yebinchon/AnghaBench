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
struct intel_sdvo {int /*<<< orphan*/  sdvo_reg; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;
struct intel_encoder {TYPE_1__ base; } ;
struct TYPE_4__ {int /*<<< orphan*/  crtc; } ;
struct intel_crtc_state {scalar_t__ has_audio; TYPE_2__ base; } ;
struct intel_crtc {scalar_t__ pipe; } ;
struct drm_i915_private {int dummy; } ;
struct drm_connector_state {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRM_MODE_DPMS_OFF ; 
 scalar_t__ FUNC0 (struct drm_i915_private*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PIPE_A ; 
 scalar_t__ PIPE_B ; 
 int SDVO_ENABLE ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int SDVO_PIPE_SEL_MASK ; 
 int /*<<< orphan*/  FUNC3 (struct intel_sdvo*) ; 
 int /*<<< orphan*/  FUNC4 (struct intel_sdvo*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct intel_sdvo*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct intel_sdvo*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_i915_private*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_i915_private*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct drm_i915_private*,int /*<<< orphan*/ ) ; 
 struct drm_i915_private* FUNC10 (int /*<<< orphan*/ ) ; 
 struct intel_crtc* FUNC11 (int /*<<< orphan*/ ) ; 
 struct intel_sdvo* FUNC12 (struct intel_encoder*) ; 

__attribute__((used)) static void FUNC13(struct intel_encoder *encoder,
			       const struct intel_crtc_state *old_crtc_state,
			       const struct drm_connector_state *conn_state)
{
	struct drm_i915_private *dev_priv = FUNC10(encoder->base.dev);
	struct intel_sdvo *intel_sdvo = FUNC12(encoder);
	struct intel_crtc *crtc = FUNC11(old_crtc_state->base.crtc);
	u32 temp;

	if (old_crtc_state->has_audio)
		FUNC3(intel_sdvo);

	FUNC4(intel_sdvo, 0);
	if (0)
		FUNC5(intel_sdvo,
						   DRM_MODE_DPMS_OFF);

	temp = FUNC1(intel_sdvo->sdvo_reg);

	temp &= ~SDVO_ENABLE;
	FUNC6(intel_sdvo, temp);

	/*
	 * HW workaround for IBX, we need to move the port
	 * to transcoder A after disabling it to allow the
	 * matching DP port to be enabled on transcoder A.
	 */
	if (FUNC0(dev_priv) && crtc->pipe == PIPE_B) {
		/*
		 * We get CPU/PCH FIFO underruns on the other pipe when
		 * doing the workaround. Sweep them under the rug.
		 */
		FUNC7(dev_priv, PIPE_A, false);
		FUNC8(dev_priv, PIPE_A, false);

		temp &= ~SDVO_PIPE_SEL_MASK;
		temp |= SDVO_ENABLE | FUNC2(PIPE_A);
		FUNC6(intel_sdvo, temp);

		temp &= ~SDVO_ENABLE;
		FUNC6(intel_sdvo, temp);

		FUNC9(dev_priv, PIPE_A);
		FUNC7(dev_priv, PIPE_A, true);
		FUNC8(dev_priv, PIPE_A, true);
	}
}