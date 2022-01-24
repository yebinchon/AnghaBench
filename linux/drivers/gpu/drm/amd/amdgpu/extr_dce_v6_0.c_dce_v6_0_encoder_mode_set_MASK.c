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
 int ATOM_ENCODER_MODE_HDMI ; 
 int /*<<< orphan*/  DRM_MODE_DPMS_OFF ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_encoder*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct drm_encoder*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_encoder*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_encoder*,struct drm_display_mode*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct drm_display_mode*) ; 
 struct amdgpu_encoder* FUNC6 (struct drm_encoder*) ; 

__attribute__((used)) static void
FUNC7(struct drm_encoder *encoder,
			  struct drm_display_mode *mode,
			  struct drm_display_mode *adjusted_mode)
{

	struct amdgpu_encoder *amdgpu_encoder = FUNC6(encoder);
	int em = FUNC2(encoder);

	amdgpu_encoder->pixel_clock = adjusted_mode->clock;

	/* need to call this here rather than in prepare() since we need some crtc info */
	FUNC1(encoder, DRM_MODE_DPMS_OFF);

	/* set scaler clears this on some chips */
	FUNC5(encoder->crtc, mode);

	if (em == ATOM_ENCODER_MODE_HDMI || FUNC0(em)) {
		FUNC3(encoder, true);
		FUNC4(encoder, adjusted_mode);
	}
}