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
struct drm_encoder {int dummy; } ;
struct drm_display_mode {int flags; scalar_t__ crtc_vsync_start; scalar_t__ crtc_vdisplay; } ;
struct drm_connector {int dummy; } ;
struct amdgpu_encoder {int active_device; scalar_t__ rmx_type; } ;

/* Variables and functions */
 int ATOM_DEVICE_DFP_SUPPORT ; 
 int ATOM_DEVICE_LCD_SUPPORT ; 
 int DRM_MODE_FLAG_INTERLACE ; 
 scalar_t__ ENCODER_OBJECT_ID_NONE ; 
 scalar_t__ RMX_OFF ; 
 int /*<<< orphan*/  FUNC0 (struct drm_connector*,struct drm_display_mode*) ; 
 scalar_t__ FUNC1 (struct drm_encoder*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_encoder*) ; 
 struct drm_connector* FUNC3 (struct drm_encoder*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_encoder*,struct drm_display_mode*) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_display_mode*,int /*<<< orphan*/ ) ; 
 struct amdgpu_encoder* FUNC6 (struct drm_encoder*) ; 

bool FUNC7(struct drm_encoder *encoder,
				 const struct drm_display_mode *mode,
				 struct drm_display_mode *adjusted_mode)
{
	struct amdgpu_encoder *amdgpu_encoder = FUNC6(encoder);

	/* set the active encoder to connector routing */
	FUNC2(encoder);
	FUNC5(adjusted_mode, 0);

	/* hw bug */
	if ((mode->flags & DRM_MODE_FLAG_INTERLACE)
	    && (mode->crtc_vsync_start < (mode->crtc_vdisplay + 2)))
		adjusted_mode->crtc_vsync_start = adjusted_mode->crtc_vdisplay + 2;

	/* vertical FP must be at least 1 */
	if (mode->crtc_vsync_start == mode->crtc_vdisplay)
		adjusted_mode->crtc_vsync_start++;

	/* get the native mode for scaling */
	if (amdgpu_encoder->active_device & (ATOM_DEVICE_LCD_SUPPORT))
		FUNC4(encoder, adjusted_mode);
	else if (amdgpu_encoder->rmx_type != RMX_OFF)
		FUNC4(encoder, adjusted_mode);

	if ((amdgpu_encoder->active_device & (ATOM_DEVICE_DFP_SUPPORT | ATOM_DEVICE_LCD_SUPPORT)) ||
	    (FUNC1(encoder) != ENCODER_OBJECT_ID_NONE)) {
		struct drm_connector *connector = FUNC3(encoder);
		FUNC0(connector, adjusted_mode);
	}

	return true;
}