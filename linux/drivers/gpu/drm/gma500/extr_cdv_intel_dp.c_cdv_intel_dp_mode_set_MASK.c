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
typedef  int uint32_t ;
struct gma_encoder {struct cdv_intel_dp* dev_priv; } ;
struct gma_crtc {int pipe; } ;
struct drm_encoder {struct drm_device* dev; struct drm_crtc* crtc; } ;
struct drm_display_mode {int flags; scalar_t__ hdisplay; scalar_t__ vdisplay; } ;
struct drm_device {int dummy; } ;
struct drm_crtc {int dummy; } ;
struct cdv_intel_dp {int DP; int color_range; int lane_count; int* link_configuration; int link_bw; int* dpcd; int /*<<< orphan*/  output_reg; scalar_t__ has_audio; } ;

/* Variables and functions */
 int DP_AUDIO_OUTPUT_ENABLE ; 
 size_t DP_DPCD_REV ; 
 int DP_ENHANCED_FRAME_CAP ; 
 int DP_ENHANCED_FRAMING ; 
 int DP_LANE_COUNT_ENHANCED_FRAME_EN ; 
 int /*<<< orphan*/  DP_LINK_CONFIGURATION_SIZE ; 
 int DP_LINK_TRAIN_OFF ; 
 size_t DP_MAX_LANE_COUNT ; 
 int DP_PIPEB_SELECT ; 
 int DP_PORT_EN ; 
 int DP_PORT_WIDTH_1 ; 
 int DP_PORT_WIDTH_2 ; 
 int DP_PORT_WIDTH_4 ; 
 int DP_PRE_EMPHASIS_0 ; 
 int DP_SYNC_HS_HIGH ; 
 int DP_SYNC_VS_HIGH ; 
 int DP_VOLTAGE_0_4 ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int DRM_MODE_FLAG_PHSYNC ; 
 int DRM_MODE_FLAG_PVSYNC ; 
 int /*<<< orphan*/  PFIT_CONTROL ; 
 int PFIT_ENABLE ; 
 int PFIT_PIPE_SHIFT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct gma_encoder*) ; 
 scalar_t__ FUNC3 (struct gma_encoder*) ; 
 int /*<<< orphan*/  FUNC4 (int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct gma_crtc* FUNC5 (struct drm_crtc*) ; 
 struct gma_encoder* FUNC6 (struct drm_encoder*) ; 

__attribute__((used)) static void
FUNC7(struct drm_encoder *encoder, struct drm_display_mode *mode,
		  struct drm_display_mode *adjusted_mode)
{
	struct gma_encoder *intel_encoder = FUNC6(encoder);
	struct drm_crtc *crtc = encoder->crtc;
	struct gma_crtc *gma_crtc = FUNC5(crtc);
	struct cdv_intel_dp *intel_dp = intel_encoder->dev_priv;
	struct drm_device *dev = encoder->dev;

	intel_dp->DP = DP_VOLTAGE_0_4 | DP_PRE_EMPHASIS_0;
	intel_dp->DP |= intel_dp->color_range;

	if (adjusted_mode->flags & DRM_MODE_FLAG_PHSYNC)
		intel_dp->DP |= DP_SYNC_HS_HIGH;
	if (adjusted_mode->flags & DRM_MODE_FLAG_PVSYNC)
		intel_dp->DP |= DP_SYNC_VS_HIGH;

	intel_dp->DP |= DP_LINK_TRAIN_OFF;

	switch (intel_dp->lane_count) {
	case 1:
		intel_dp->DP |= DP_PORT_WIDTH_1;
		break;
	case 2:
		intel_dp->DP |= DP_PORT_WIDTH_2;
		break;
	case 4:
		intel_dp->DP |= DP_PORT_WIDTH_4;
		break;
	}
	if (intel_dp->has_audio)
		intel_dp->DP |= DP_AUDIO_OUTPUT_ENABLE;

	FUNC4(intel_dp->link_configuration, 0, DP_LINK_CONFIGURATION_SIZE);
	intel_dp->link_configuration[0] = intel_dp->link_bw;
	intel_dp->link_configuration[1] = intel_dp->lane_count;

	/*
	 * Check for DPCD version > 1.1 and enhanced framing support
	 */
	if (intel_dp->dpcd[DP_DPCD_REV] >= 0x11 &&
	    (intel_dp->dpcd[DP_MAX_LANE_COUNT] & DP_ENHANCED_FRAME_CAP)) {
		intel_dp->link_configuration[1] |= DP_LANE_COUNT_ENHANCED_FRAME_EN;
		intel_dp->DP |= DP_ENHANCED_FRAMING;
	}

	/* CPT DP's pipe select is decided in TRANS_DP_CTL */
	if (gma_crtc->pipe == 1)
		intel_dp->DP |= DP_PIPEB_SELECT;

	FUNC1(intel_dp->output_reg, (intel_dp->DP | DP_PORT_EN));
	FUNC0("DP expected reg is %x\n", intel_dp->DP);
	if (FUNC3(intel_encoder)) {
		uint32_t pfit_control;
		FUNC2(intel_encoder);

		if (mode->hdisplay != adjusted_mode->hdisplay ||
			    mode->vdisplay != adjusted_mode->vdisplay)
			pfit_control = PFIT_ENABLE;
		else
			pfit_control = 0;

		pfit_control |= gma_crtc->pipe << PFIT_PIPE_SHIFT;

		FUNC1(PFIT_CONTROL, pfit_control);
	}
}