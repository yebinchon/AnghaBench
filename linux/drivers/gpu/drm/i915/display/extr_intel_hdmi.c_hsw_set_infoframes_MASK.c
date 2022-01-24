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
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;
struct intel_encoder {TYPE_1__ base; } ;
struct TYPE_4__ {int /*<<< orphan*/  drm; int /*<<< orphan*/  hdmi; int /*<<< orphan*/  spd; int /*<<< orphan*/  avi; } ;
struct intel_crtc_state {TYPE_2__ infoframes; int /*<<< orphan*/  cpu_transcoder; } ;
struct drm_i915_private {int dummy; } ;
struct drm_connector_state {int dummy; } ;
typedef  int /*<<< orphan*/  i915_reg_t ;

/* Variables and functions */
 int /*<<< orphan*/  HDMI_INFOFRAME_TYPE_AVI ; 
 int /*<<< orphan*/  HDMI_INFOFRAME_TYPE_DRM ; 
 int /*<<< orphan*/  HDMI_INFOFRAME_TYPE_SPD ; 
 int /*<<< orphan*/  HDMI_INFOFRAME_TYPE_VENDOR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int VIDEO_DIP_ENABLE_AVI_HSW ; 
 int VIDEO_DIP_ENABLE_DRM_GLK ; 
 int VIDEO_DIP_ENABLE_GCP_HSW ; 
 int VIDEO_DIP_ENABLE_GMP_HSW ; 
 int VIDEO_DIP_ENABLE_SPD_HSW ; 
 int VIDEO_DIP_ENABLE_VSC_HSW ; 
 int VIDEO_DIP_ENABLE_VS_HSW ; 
 int /*<<< orphan*/  FUNC4 (struct drm_i915_private*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct intel_encoder*,struct intel_crtc_state const*,struct drm_connector_state const*) ; 
 int /*<<< orphan*/  FUNC6 (struct intel_encoder*,struct intel_crtc_state const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct drm_i915_private* FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct intel_encoder *encoder,
			       bool enable,
			       const struct intel_crtc_state *crtc_state,
			       const struct drm_connector_state *conn_state)
{
	struct drm_i915_private *dev_priv = FUNC7(encoder->base.dev);
	i915_reg_t reg = FUNC0(crtc_state->cpu_transcoder);
	u32 val = FUNC1(reg);

	FUNC4(dev_priv,
					     crtc_state->cpu_transcoder);

	val &= ~(VIDEO_DIP_ENABLE_VSC_HSW | VIDEO_DIP_ENABLE_AVI_HSW |
		 VIDEO_DIP_ENABLE_GCP_HSW | VIDEO_DIP_ENABLE_VS_HSW |
		 VIDEO_DIP_ENABLE_GMP_HSW | VIDEO_DIP_ENABLE_SPD_HSW |
		 VIDEO_DIP_ENABLE_DRM_GLK);

	if (!enable) {
		FUNC2(reg, val);
		FUNC3(reg);
		return;
	}

	if (FUNC5(encoder, crtc_state, conn_state))
		val |= VIDEO_DIP_ENABLE_GCP_HSW;

	FUNC2(reg, val);
	FUNC3(reg);

	FUNC6(encoder, crtc_state,
			      HDMI_INFOFRAME_TYPE_AVI,
			      &crtc_state->infoframes.avi);
	FUNC6(encoder, crtc_state,
			      HDMI_INFOFRAME_TYPE_SPD,
			      &crtc_state->infoframes.spd);
	FUNC6(encoder, crtc_state,
			      HDMI_INFOFRAME_TYPE_VENDOR,
			      &crtc_state->infoframes.hdmi);
	FUNC6(encoder, crtc_state,
			      HDMI_INFOFRAME_TYPE_DRM,
			      &crtc_state->infoframes.drm);
}