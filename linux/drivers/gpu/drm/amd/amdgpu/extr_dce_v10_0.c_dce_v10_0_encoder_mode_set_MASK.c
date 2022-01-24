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
struct drm_encoder {int /*<<< orphan*/  crtc; } ;
struct drm_display_mode {int /*<<< orphan*/  clock; } ;
struct amdgpu_encoder {int /*<<< orphan*/  pixel_clock; } ;

/* Variables and functions */
 scalar_t__ ATOM_ENCODER_MODE_HDMI ; 
 int /*<<< orphan*/  DRM_MODE_DPMS_OFF ; 
 int /*<<< orphan*/  FUNC0 (struct drm_encoder*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct drm_encoder*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_encoder*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_encoder*,struct drm_display_mode*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct drm_display_mode*) ; 
 struct amdgpu_encoder* FUNC5 (struct drm_encoder*) ; 

__attribute__((used)) static void
FUNC6(struct drm_encoder *encoder,
			  struct drm_display_mode *mode,
			  struct drm_display_mode *adjusted_mode)
{
	struct amdgpu_encoder *amdgpu_encoder = FUNC5(encoder);

	amdgpu_encoder->pixel_clock = adjusted_mode->clock;

	/* need to call this here rather than in prepare() since we need some crtc info */
	FUNC0(encoder, DRM_MODE_DPMS_OFF);

	/* set scaler clears this on some chips */
	FUNC4(encoder->crtc, mode);

	if (FUNC1(encoder) == ATOM_ENCODER_MODE_HDMI) {
		FUNC2(encoder, true);
		FUNC3(encoder, adjusted_mode);
	}
}