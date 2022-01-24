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
struct radeon_encoder {int active_device; int encoder_id; int devices; int /*<<< orphan*/  pixel_clock; } ;
struct radeon_device {int dummy; } ;
struct drm_encoder {struct drm_device* dev; } ;
struct drm_display_mode {int /*<<< orphan*/  clock; } ;
struct drm_device {struct radeon_device* dev_private; } ;
struct drm_connector {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct radeon_device*) ; 
 int ATOM_DEVICE_CV_SUPPORT ; 
 int ATOM_DEVICE_TV_SUPPORT ; 
 int /*<<< orphan*/  ATOM_DISABLE ; 
 int /*<<< orphan*/  ATOM_ENABLE ; 
 int ATOM_ENCODER_MODE_HDMI ; 
 int /*<<< orphan*/  DRM_MODE_DPMS_OFF ; 
 scalar_t__ FUNC2 (int) ; 
#define  ENCODER_OBJECT_ID_INTERNAL_DAC1 143 
#define  ENCODER_OBJECT_ID_INTERNAL_DAC2 142 
#define  ENCODER_OBJECT_ID_INTERNAL_DDI 141 
#define  ENCODER_OBJECT_ID_INTERNAL_DVO1 140 
#define  ENCODER_OBJECT_ID_INTERNAL_KLDSCP_DAC1 139 
#define  ENCODER_OBJECT_ID_INTERNAL_KLDSCP_DAC2 138 
#define  ENCODER_OBJECT_ID_INTERNAL_KLDSCP_DVO1 137 
#define  ENCODER_OBJECT_ID_INTERNAL_KLDSCP_LVTMA 136 
#define  ENCODER_OBJECT_ID_INTERNAL_KLDSCP_TMDS1 135 
#define  ENCODER_OBJECT_ID_INTERNAL_LVDS 134 
#define  ENCODER_OBJECT_ID_INTERNAL_LVTM1 133 
#define  ENCODER_OBJECT_ID_INTERNAL_TMDS1 132 
#define  ENCODER_OBJECT_ID_INTERNAL_UNIPHY 131 
#define  ENCODER_OBJECT_ID_INTERNAL_UNIPHY1 130 
#define  ENCODER_OBJECT_ID_INTERNAL_UNIPHY2 129 
#define  ENCODER_OBJECT_ID_INTERNAL_UNIPHY3 128 
 int /*<<< orphan*/  PANEL_ENCODER_ACTION_ENABLE ; 
 int /*<<< orphan*/  FUNC3 (struct drm_encoder*,struct drm_display_mode*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_encoder*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_encoder*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_encoder*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct drm_encoder*) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_encoder*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct drm_encoder*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct drm_encoder*,int /*<<< orphan*/ ) ; 
 scalar_t__ radeon_audio ; 
 int /*<<< orphan*/  FUNC11 (struct drm_encoder*,struct drm_display_mode*) ; 
 struct drm_connector* FUNC12 (struct drm_encoder*) ; 
 struct radeon_encoder* FUNC13 (struct drm_encoder*) ; 

__attribute__((used)) static void
FUNC14(struct drm_encoder *encoder,
			     struct drm_display_mode *mode,
			     struct drm_display_mode *adjusted_mode)
{
	struct drm_device *dev = encoder->dev;
	struct radeon_device *rdev = dev->dev_private;
	struct radeon_encoder *radeon_encoder = FUNC13(encoder);
	struct drm_connector *connector = FUNC12(encoder);
	int encoder_mode;

	radeon_encoder->pixel_clock = adjusted_mode->clock;

	/* need to call this here rather than in prepare() since we need some crtc info */
	FUNC10(encoder, DRM_MODE_DPMS_OFF);

	if (FUNC0(rdev) && !FUNC1(rdev)) {
		if (radeon_encoder->active_device & (ATOM_DEVICE_CV_SUPPORT | ATOM_DEVICE_TV_SUPPORT))
			FUNC9(encoder, true);
		else
			FUNC9(encoder, false);
	}

	switch (radeon_encoder->encoder_id) {
	case ENCODER_OBJECT_ID_INTERNAL_TMDS1:
	case ENCODER_OBJECT_ID_INTERNAL_KLDSCP_TMDS1:
	case ENCODER_OBJECT_ID_INTERNAL_LVDS:
	case ENCODER_OBJECT_ID_INTERNAL_LVTM1:
		FUNC5(encoder, PANEL_ENCODER_ACTION_ENABLE);
		break;
	case ENCODER_OBJECT_ID_INTERNAL_UNIPHY:
	case ENCODER_OBJECT_ID_INTERNAL_UNIPHY1:
	case ENCODER_OBJECT_ID_INTERNAL_UNIPHY2:
	case ENCODER_OBJECT_ID_INTERNAL_UNIPHY3:
	case ENCODER_OBJECT_ID_INTERNAL_KLDSCP_LVTMA:
		/* handled in dpms */
		break;
	case ENCODER_OBJECT_ID_INTERNAL_DDI:
	case ENCODER_OBJECT_ID_INTERNAL_DVO1:
	case ENCODER_OBJECT_ID_INTERNAL_KLDSCP_DVO1:
		FUNC6(encoder, ATOM_ENABLE);
		break;
	case ENCODER_OBJECT_ID_INTERNAL_DAC1:
	case ENCODER_OBJECT_ID_INTERNAL_KLDSCP_DAC1:
	case ENCODER_OBJECT_ID_INTERNAL_DAC2:
	case ENCODER_OBJECT_ID_INTERNAL_KLDSCP_DAC2:
		FUNC4(encoder, ATOM_ENABLE);
		if (radeon_encoder->devices & (ATOM_DEVICE_TV_SUPPORT | ATOM_DEVICE_CV_SUPPORT)) {
			if (radeon_encoder->active_device & (ATOM_DEVICE_TV_SUPPORT | ATOM_DEVICE_CV_SUPPORT))
				FUNC8(encoder, ATOM_ENABLE);
			else
				FUNC8(encoder, ATOM_DISABLE);
		}
		break;
	}

	FUNC3(encoder, adjusted_mode);

	encoder_mode = FUNC7(encoder);
	if (connector && (radeon_audio != 0) &&
	    ((encoder_mode == ATOM_ENCODER_MODE_HDMI) ||
	     FUNC2(encoder_mode)))
		FUNC11(encoder, adjusted_mode);
}