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
typedef  int /*<<< orphan*/  u32 ;
struct drm_encoder {int /*<<< orphan*/  crtc; struct drm_device* dev; } ;
struct drm_device {struct amdgpu_device* dev_private; } ;
struct drm_connector {int dummy; } ;
struct amdgpu_encoder {int devices; scalar_t__ encoder_id; } ;
struct amdgpu_device {int dummy; } ;
struct amdgpu_crtc {scalar_t__ crtc_offset; } ;
struct amdgpu_connector {int dither; } ;
typedef  enum amdgpu_connector_dither { ____Placeholder_amdgpu_connector_dither } amdgpu_connector_dither ;

/* Variables and functions */
 int AMDGPU_FMT_DITHER_DISABLE ; 
 int AMDGPU_FMT_DITHER_ENABLE ; 
 int ATOM_DEVICE_LCD_SUPPORT ; 
 scalar_t__ ENCODER_OBJECT_ID_INTERNAL_KLDSCP_DAC1 ; 
 scalar_t__ ENCODER_OBJECT_ID_INTERNAL_KLDSCP_DAC2 ; 
 int /*<<< orphan*/  FMT_BIT_DEPTH_CONTROL ; 
 int /*<<< orphan*/  FMT_FRAME_RANDOM_ENABLE ; 
 int /*<<< orphan*/  FMT_HIGHPASS_RANDOM_ENABLE ; 
 int /*<<< orphan*/  FMT_RGB_RANDOM_ENABLE ; 
 int /*<<< orphan*/  FMT_SPATIAL_DITHER_DEPTH ; 
 int /*<<< orphan*/  FMT_SPATIAL_DITHER_EN ; 
 int /*<<< orphan*/  FMT_TRUNCATE_DEPTH ; 
 int /*<<< orphan*/  FMT_TRUNCATE_EN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct drm_connector*) ; 
 struct drm_connector* FUNC3 (struct drm_encoder*) ; 
 scalar_t__ mmFMT_BIT_DEPTH_CONTROL ; 
 struct amdgpu_connector* FUNC4 (struct drm_connector*) ; 
 struct amdgpu_crtc* FUNC5 (int /*<<< orphan*/ ) ; 
 struct amdgpu_encoder* FUNC6 (struct drm_encoder*) ; 

__attribute__((used)) static void FUNC7(struct drm_encoder *encoder)
{
	struct drm_device *dev = encoder->dev;
	struct amdgpu_device *adev = dev->dev_private;
	struct amdgpu_encoder *amdgpu_encoder = FUNC6(encoder);
	struct amdgpu_crtc *amdgpu_crtc = FUNC5(encoder->crtc);
	struct drm_connector *connector = FUNC3(encoder);
	int bpc = 0;
	u32 tmp = 0;
	enum amdgpu_connector_dither dither = AMDGPU_FMT_DITHER_DISABLE;

	if (connector) {
		struct amdgpu_connector *amdgpu_connector = FUNC4(connector);
		bpc = FUNC2(connector);
		dither = amdgpu_connector->dither;
	}

	/* LVDS/eDP FMT is set up by atom */
	if (amdgpu_encoder->devices & ATOM_DEVICE_LCD_SUPPORT)
		return;

	/* not needed for analog */
	if ((amdgpu_encoder->encoder_id == ENCODER_OBJECT_ID_INTERNAL_KLDSCP_DAC1) ||
	    (amdgpu_encoder->encoder_id == ENCODER_OBJECT_ID_INTERNAL_KLDSCP_DAC2))
		return;

	if (bpc == 0)
		return;

	switch (bpc) {
	case 6:
		if (dither == AMDGPU_FMT_DITHER_ENABLE) {
			/* XXX sort out optimal dither settings */
			tmp = FUNC0(tmp, FMT_BIT_DEPTH_CONTROL, FMT_FRAME_RANDOM_ENABLE, 1);
			tmp = FUNC0(tmp, FMT_BIT_DEPTH_CONTROL, FMT_HIGHPASS_RANDOM_ENABLE, 1);
			tmp = FUNC0(tmp, FMT_BIT_DEPTH_CONTROL, FMT_SPATIAL_DITHER_EN, 1);
			tmp = FUNC0(tmp, FMT_BIT_DEPTH_CONTROL, FMT_SPATIAL_DITHER_DEPTH, 0);
		} else {
			tmp = FUNC0(tmp, FMT_BIT_DEPTH_CONTROL, FMT_TRUNCATE_EN, 1);
			tmp = FUNC0(tmp, FMT_BIT_DEPTH_CONTROL, FMT_TRUNCATE_DEPTH, 0);
		}
		break;
	case 8:
		if (dither == AMDGPU_FMT_DITHER_ENABLE) {
			/* XXX sort out optimal dither settings */
			tmp = FUNC0(tmp, FMT_BIT_DEPTH_CONTROL, FMT_FRAME_RANDOM_ENABLE, 1);
			tmp = FUNC0(tmp, FMT_BIT_DEPTH_CONTROL, FMT_HIGHPASS_RANDOM_ENABLE, 1);
			tmp = FUNC0(tmp, FMT_BIT_DEPTH_CONTROL, FMT_RGB_RANDOM_ENABLE, 1);
			tmp = FUNC0(tmp, FMT_BIT_DEPTH_CONTROL, FMT_SPATIAL_DITHER_EN, 1);
			tmp = FUNC0(tmp, FMT_BIT_DEPTH_CONTROL, FMT_SPATIAL_DITHER_DEPTH, 1);
		} else {
			tmp = FUNC0(tmp, FMT_BIT_DEPTH_CONTROL, FMT_TRUNCATE_EN, 1);
			tmp = FUNC0(tmp, FMT_BIT_DEPTH_CONTROL, FMT_TRUNCATE_DEPTH, 1);
		}
		break;
	case 10:
		if (dither == AMDGPU_FMT_DITHER_ENABLE) {
			/* XXX sort out optimal dither settings */
			tmp = FUNC0(tmp, FMT_BIT_DEPTH_CONTROL, FMT_FRAME_RANDOM_ENABLE, 1);
			tmp = FUNC0(tmp, FMT_BIT_DEPTH_CONTROL, FMT_HIGHPASS_RANDOM_ENABLE, 1);
			tmp = FUNC0(tmp, FMT_BIT_DEPTH_CONTROL, FMT_RGB_RANDOM_ENABLE, 1);
			tmp = FUNC0(tmp, FMT_BIT_DEPTH_CONTROL, FMT_SPATIAL_DITHER_EN, 1);
			tmp = FUNC0(tmp, FMT_BIT_DEPTH_CONTROL, FMT_SPATIAL_DITHER_DEPTH, 2);
		} else {
			tmp = FUNC0(tmp, FMT_BIT_DEPTH_CONTROL, FMT_TRUNCATE_EN, 1);
			tmp = FUNC0(tmp, FMT_BIT_DEPTH_CONTROL, FMT_TRUNCATE_DEPTH, 2);
		}
		break;
	default:
		/* not needed */
		break;
	}

	FUNC1(mmFMT_BIT_DEPTH_CONTROL + amdgpu_crtc->crtc_offset, tmp);
}