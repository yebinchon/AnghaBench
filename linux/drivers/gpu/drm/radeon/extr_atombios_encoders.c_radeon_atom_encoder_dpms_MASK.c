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
struct radeon_encoder {int encoder_id; int /*<<< orphan*/  active_device; int /*<<< orphan*/  devices; } ;
struct radeon_device {int dummy; } ;
struct drm_encoder {struct drm_device* dev; } ;
struct drm_device {struct radeon_device* dev_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct radeon_device*) ; 
 int /*<<< orphan*/  ATOM_DISABLE ; 
 int /*<<< orphan*/  ATOM_ENABLE ; 
 int ATOM_ENCODER_MODE_HDMI ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
#define  DRM_MODE_DPMS_OFF 147 
#define  DRM_MODE_DPMS_ON 146 
#define  DRM_MODE_DPMS_STANDBY 145 
#define  DRM_MODE_DPMS_SUSPEND 144 
 scalar_t__ FUNC3 (int) ; 
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
 int /*<<< orphan*/  FUNC4 (struct drm_encoder*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_encoder*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct drm_encoder*) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_encoder*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_encoder*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct drm_encoder*,int) ; 
 scalar_t__ radeon_audio ; 
 int /*<<< orphan*/  FUNC10 (struct drm_encoder*,int) ; 
 struct radeon_encoder* FUNC11 (struct drm_encoder*) ; 

__attribute__((used)) static void
FUNC12(struct drm_encoder *encoder, int mode)
{
	struct drm_device *dev = encoder->dev;
	struct radeon_device *rdev = dev->dev_private;
	struct radeon_encoder *radeon_encoder = FUNC11(encoder);
	int encoder_mode = FUNC6(encoder);

	FUNC2("encoder dpms %d to mode %d, devices %08x, active_devices %08x\n",
		  radeon_encoder->encoder_id, mode, radeon_encoder->devices,
		  radeon_encoder->active_device);

	if ((radeon_audio != 0) &&
	    ((encoder_mode == ATOM_ENCODER_MODE_HDMI) ||
	     FUNC3(encoder_mode)))
		FUNC10(encoder, mode);

	switch (radeon_encoder->encoder_id) {
	case ENCODER_OBJECT_ID_INTERNAL_TMDS1:
	case ENCODER_OBJECT_ID_INTERNAL_KLDSCP_TMDS1:
	case ENCODER_OBJECT_ID_INTERNAL_LVDS:
	case ENCODER_OBJECT_ID_INTERNAL_LVTM1:
	case ENCODER_OBJECT_ID_INTERNAL_DVO1:
	case ENCODER_OBJECT_ID_INTERNAL_DDI:
	case ENCODER_OBJECT_ID_INTERNAL_DAC2:
	case ENCODER_OBJECT_ID_INTERNAL_KLDSCP_DAC2:
		FUNC7(encoder, mode);
		break;
	case ENCODER_OBJECT_ID_INTERNAL_UNIPHY:
	case ENCODER_OBJECT_ID_INTERNAL_UNIPHY1:
	case ENCODER_OBJECT_ID_INTERNAL_UNIPHY2:
	case ENCODER_OBJECT_ID_INTERNAL_UNIPHY3:
	case ENCODER_OBJECT_ID_INTERNAL_KLDSCP_LVTMA:
		FUNC8(encoder, mode);
		break;
	case ENCODER_OBJECT_ID_INTERNAL_KLDSCP_DVO1:
		if (FUNC1(rdev)) {
			switch (mode) {
			case DRM_MODE_DPMS_ON:
				FUNC5(encoder, ATOM_ENABLE);
				break;
			case DRM_MODE_DPMS_STANDBY:
			case DRM_MODE_DPMS_SUSPEND:
			case DRM_MODE_DPMS_OFF:
				FUNC5(encoder, ATOM_DISABLE);
				break;
			}
		} else if (FUNC0(rdev))
			FUNC8(encoder, mode);
		else
			FUNC7(encoder, mode);
		break;
	case ENCODER_OBJECT_ID_INTERNAL_DAC1:
	case ENCODER_OBJECT_ID_INTERNAL_KLDSCP_DAC1:
		if (FUNC1(rdev)) {
			switch (mode) {
			case DRM_MODE_DPMS_ON:
				FUNC4(encoder, ATOM_ENABLE);
				break;
			case DRM_MODE_DPMS_STANDBY:
			case DRM_MODE_DPMS_SUSPEND:
			case DRM_MODE_DPMS_OFF:
				FUNC4(encoder, ATOM_DISABLE);
				break;
			}
		} else
			FUNC7(encoder, mode);
		break;
	default:
		return;
	}

	FUNC9(encoder, (mode == DRM_MODE_DPMS_ON) ? true : false);

}