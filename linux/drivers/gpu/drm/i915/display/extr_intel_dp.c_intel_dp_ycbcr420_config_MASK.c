#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct intel_dp {int dummy; } ;
struct drm_display_mode {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  crtc; struct drm_display_mode adjusted_mode; } ;
struct intel_crtc_state {int /*<<< orphan*/  output_format; TYPE_1__ base; } ;
struct intel_crtc {int dummy; } ;
struct drm_display_info {int dummy; } ;
struct drm_connector {int /*<<< orphan*/  ycbcr_420_allowed; struct drm_display_info display_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  DRM_MODE_SCALE_FULLSCREEN ; 
 int /*<<< orphan*/  INTEL_OUTPUT_FORMAT_YCBCR420 ; 
 int /*<<< orphan*/  FUNC1 (struct drm_display_info const*,struct drm_display_mode const*) ; 
 int /*<<< orphan*/  FUNC2 (struct intel_dp*) ; 
 int /*<<< orphan*/  FUNC3 (struct intel_crtc*,struct intel_crtc_state*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct intel_crtc_state*) ; 
 struct intel_crtc* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(struct intel_dp *intel_dp,
			 struct drm_connector *connector,
			 struct intel_crtc_state *crtc_state)
{
	const struct drm_display_info *info = &connector->display_info;
	const struct drm_display_mode *adjusted_mode =
		&crtc_state->base.adjusted_mode;
	struct intel_crtc *crtc = FUNC5(crtc_state->base.crtc);
	int ret;

	if (!FUNC1(info, adjusted_mode) ||
	    !FUNC2(intel_dp) ||
	    !connector->ycbcr_420_allowed)
		return 0;

	crtc_state->output_format = INTEL_OUTPUT_FORMAT_YCBCR420;

	/* YCBCR 420 output conversion needs a scaler */
	ret = FUNC4(crtc_state);
	if (ret) {
		FUNC0("Scaler allocation for output failed\n");
		return ret;
	}

	FUNC3(crtc, crtc_state, DRM_MODE_SCALE_FULLSCREEN);

	return 0;
}