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
struct sun4i_tcon {int dummy; } ;
struct drm_encoder {int encoder_type; } ;
struct drm_display_mode {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
#define  DRM_MODE_ENCODER_DSI 132 
#define  DRM_MODE_ENCODER_LVDS 131 
#define  DRM_MODE_ENCODER_NONE 130 
#define  DRM_MODE_ENCODER_TMDS 129 
#define  DRM_MODE_ENCODER_TVDAC 128 
 int /*<<< orphan*/  FUNC1 (struct sun4i_tcon*,struct drm_encoder const*,struct drm_display_mode const*) ; 
 int /*<<< orphan*/  FUNC2 (struct sun4i_tcon*,struct drm_encoder const*,struct drm_display_mode const*) ; 
 int /*<<< orphan*/  FUNC3 (struct sun4i_tcon*,struct drm_encoder const*,struct drm_display_mode const*) ; 
 int /*<<< orphan*/  FUNC4 (struct sun4i_tcon*,struct drm_display_mode const*) ; 
 int /*<<< orphan*/  FUNC5 (struct sun4i_tcon*,int,struct drm_encoder const*) ; 

void FUNC6(struct sun4i_tcon *tcon,
			 const struct drm_encoder *encoder,
			 const struct drm_display_mode *mode)
{
	switch (encoder->encoder_type) {
	case DRM_MODE_ENCODER_DSI:
		/* DSI is tied to special case of CPU interface */
		FUNC1(tcon, encoder, mode);
		break;
	case DRM_MODE_ENCODER_LVDS:
		FUNC2(tcon, encoder, mode);
		break;
	case DRM_MODE_ENCODER_NONE:
		FUNC3(tcon, encoder, mode);
		FUNC5(tcon, 0, encoder);
		break;
	case DRM_MODE_ENCODER_TVDAC:
	case DRM_MODE_ENCODER_TMDS:
		FUNC4(tcon, mode);
		FUNC5(tcon, 1, encoder);
		break;
	default:
		FUNC0("Unknown encoder type, doing nothing...\n");
	}
}