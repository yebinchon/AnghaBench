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
struct drm_display_mode {int clock; } ;
struct drm_device {struct amdgpu_device* dev_private; } ;
struct drm_crtc {struct drm_device* dev; } ;
struct drm_connector {int dummy; } ;
struct amdgpu_encoder_atom_dig {int /*<<< orphan*/  lcd_ss_id; } ;
struct amdgpu_encoder {int active_device; struct amdgpu_encoder_atom_dig* enc_priv; } ;
struct amdgpu_device {int dummy; } ;
struct amdgpu_crtc {int bpc; int ss_enabled; int /*<<< orphan*/  adjusted_clock; int /*<<< orphan*/  ss; int /*<<< orphan*/  encoder; } ;
struct amdgpu_connector_atom_dig {int dp_clock; } ;
struct amdgpu_connector {int pixelclock_for_modeset; struct amdgpu_connector_atom_dig* con_priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  ASIC_INTERNAL_SS_ON_DP ; 
 int /*<<< orphan*/  ASIC_INTERNAL_SS_ON_HDMI ; 
 int /*<<< orphan*/  ASIC_INTERNAL_SS_ON_TMDS ; 
 int ATOM_DEVICE_DFP_SUPPORT ; 
 int ATOM_DEVICE_LCD_SUPPORT ; 
#define  ATOM_ENCODER_MODE_DP 132 
#define  ATOM_ENCODER_MODE_DP_MST 131 
#define  ATOM_ENCODER_MODE_DVI 130 
#define  ATOM_ENCODER_MODE_HDMI 129 
#define  ATOM_ENCODER_MODE_LVDS 128 
 scalar_t__ ENCODER_OBJECT_ID_NONE ; 
 int /*<<< orphan*/  FUNC0 (struct drm_crtc*,struct drm_display_mode*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (struct amdgpu_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct drm_connector*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 struct drm_connector* FUNC5 (int /*<<< orphan*/ ) ; 
 struct amdgpu_connector* FUNC6 (struct drm_connector*) ; 
 struct amdgpu_crtc* FUNC7 (struct drm_crtc*) ; 
 struct amdgpu_encoder* FUNC8 (int /*<<< orphan*/ ) ; 

int FUNC9(struct drm_crtc *crtc,
			      struct drm_display_mode *mode)
{
	struct amdgpu_crtc *amdgpu_crtc = FUNC7(crtc);
	struct drm_device *dev = crtc->dev;
	struct amdgpu_device *adev = dev->dev_private;
	struct amdgpu_encoder *amdgpu_encoder =
		FUNC8(amdgpu_crtc->encoder);
	int encoder_mode = FUNC1(amdgpu_crtc->encoder);

	amdgpu_crtc->bpc = 8;
	amdgpu_crtc->ss_enabled = false;

	if ((amdgpu_encoder->active_device & (ATOM_DEVICE_LCD_SUPPORT | ATOM_DEVICE_DFP_SUPPORT)) ||
	    (FUNC4(amdgpu_crtc->encoder) != ENCODER_OBJECT_ID_NONE)) {
		struct amdgpu_encoder_atom_dig *dig = amdgpu_encoder->enc_priv;
		struct drm_connector *connector =
			FUNC5(amdgpu_crtc->encoder);
		struct amdgpu_connector *amdgpu_connector =
			FUNC6(connector);
		struct amdgpu_connector_atom_dig *dig_connector =
			amdgpu_connector->con_priv;
		int dp_clock;

		/* Assign mode clock for hdmi deep color max clock limit check */
		amdgpu_connector->pixelclock_for_modeset = mode->clock;
		amdgpu_crtc->bpc = FUNC3(connector);

		switch (encoder_mode) {
		case ATOM_ENCODER_MODE_DP_MST:
		case ATOM_ENCODER_MODE_DP:
			/* DP/eDP */
			dp_clock = dig_connector->dp_clock / 10;
			amdgpu_crtc->ss_enabled =
				FUNC2(adev, &amdgpu_crtc->ss,
								 ASIC_INTERNAL_SS_ON_DP,
								 dp_clock);
			break;
		case ATOM_ENCODER_MODE_LVDS:
			amdgpu_crtc->ss_enabled =
				FUNC2(adev,
								 &amdgpu_crtc->ss,
								 dig->lcd_ss_id,
								 mode->clock / 10);
			break;
		case ATOM_ENCODER_MODE_DVI:
			amdgpu_crtc->ss_enabled =
				FUNC2(adev,
								 &amdgpu_crtc->ss,
								 ASIC_INTERNAL_SS_ON_TMDS,
								 mode->clock / 10);
			break;
		case ATOM_ENCODER_MODE_HDMI:
			amdgpu_crtc->ss_enabled =
				FUNC2(adev,
								 &amdgpu_crtc->ss,
								 ASIC_INTERNAL_SS_ON_HDMI,
								 mode->clock / 10);
			break;
		default:
			break;
		}
	}

	/* adjust pixel clock as needed */
	amdgpu_crtc->adjusted_clock = FUNC0(crtc, mode);

	return 0;
}