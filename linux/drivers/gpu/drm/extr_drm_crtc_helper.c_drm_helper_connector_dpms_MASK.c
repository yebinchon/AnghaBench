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
struct drm_encoder {struct drm_crtc* crtc; } ;
struct drm_crtc_helper_funcs {int /*<<< orphan*/  (* dpms ) (struct drm_crtc*,int /*<<< orphan*/ ) ;} ;
struct drm_crtc {struct drm_crtc_helper_funcs* helper_private; } ;
struct drm_connector {int dpms; int /*<<< orphan*/  dev; struct drm_encoder* encoder; } ;

/* Variables and functions */
 int DRM_MODE_DPMS_OFF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_crtc*) ; 
 int FUNC3 (struct drm_encoder*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_encoder*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_crtc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_crtc*,int /*<<< orphan*/ ) ; 

int FUNC7(struct drm_connector *connector, int mode)
{
	struct drm_encoder *encoder = connector->encoder;
	struct drm_crtc *crtc = encoder ? encoder->crtc : NULL;
	int old_dpms, encoder_dpms = DRM_MODE_DPMS_OFF;

	FUNC0(FUNC1(connector->dev));

	if (mode == connector->dpms)
		return 0;

	old_dpms = connector->dpms;
	connector->dpms = mode;

	if (encoder)
		encoder_dpms = FUNC3(encoder);

	/* from off to on, do crtc then encoder */
	if (mode < old_dpms) {
		if (crtc) {
			const struct drm_crtc_helper_funcs *crtc_funcs = crtc->helper_private;
			if (crtc_funcs->dpms)
				(*crtc_funcs->dpms) (crtc,
						     FUNC2(crtc));
		}
		if (encoder)
			FUNC4(encoder, encoder_dpms);
	}

	/* from on to off, do encoder then crtc */
	if (mode > old_dpms) {
		if (encoder)
			FUNC4(encoder, encoder_dpms);
		if (crtc) {
			const struct drm_crtc_helper_funcs *crtc_funcs = crtc->helper_private;
			if (crtc_funcs->dpms)
				(*crtc_funcs->dpms) (crtc,
						     FUNC2(crtc));
		}
	}

	return 0;
}