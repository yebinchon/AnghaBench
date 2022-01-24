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
struct radeon_encoder {int active_device; } ;
struct radeon_device {int dummy; } ;
struct drm_display_mode {int dummy; } ;
struct radeon_crtc {scalar_t__ crtc_id; struct drm_display_mode hw_mode; int /*<<< orphan*/  adjusted_clock; int /*<<< orphan*/  encoder; } ;
struct drm_framebuffer {int dummy; } ;
struct drm_device {struct radeon_device* dev_private; } ;
struct drm_crtc {struct drm_device* dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct radeon_device*) ; 
 scalar_t__ FUNC1 (struct radeon_device*) ; 
 int ATOM_DEVICE_CV_SUPPORT ; 
 int ATOM_DEVICE_TV_SUPPORT ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC2 (struct drm_crtc*,int,int,struct drm_framebuffer*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_crtc*,struct drm_display_mode*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_crtc*,struct drm_display_mode*) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_crtc*,struct drm_display_mode*,struct drm_display_mode*) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_crtc*,struct drm_display_mode*) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC9 (struct drm_crtc*) ; 
 struct radeon_crtc* FUNC10 (struct drm_crtc*) ; 
 struct radeon_encoder* FUNC11 (int /*<<< orphan*/ ) ; 

int FUNC12(struct drm_crtc *crtc,
			   struct drm_display_mode *mode,
			   struct drm_display_mode *adjusted_mode,
			   int x, int y, struct drm_framebuffer *old_fb)
{
	struct radeon_crtc *radeon_crtc = FUNC10(crtc);
	struct drm_device *dev = crtc->dev;
	struct radeon_device *rdev = dev->dev_private;
	struct radeon_encoder *radeon_encoder =
		FUNC11(radeon_crtc->encoder);
	bool is_tvcv = false;

	if (radeon_encoder->active_device &
	    (ATOM_DEVICE_TV_SUPPORT | ATOM_DEVICE_CV_SUPPORT))
		is_tvcv = true;

	if (!radeon_crtc->adjusted_clock)
		return -EINVAL;

	FUNC3(crtc, adjusted_mode);

	if (FUNC1(rdev))
		FUNC7(crtc, adjusted_mode);
	else if (FUNC0(rdev)) {
		if (is_tvcv)
			FUNC4(crtc, adjusted_mode);
		else
			FUNC7(crtc, adjusted_mode);
	} else {
		FUNC4(crtc, adjusted_mode);
		if (radeon_crtc->crtc_id == 0)
			FUNC7(crtc, adjusted_mode);
		FUNC9(crtc);
	}
	FUNC2(crtc, x, y, old_fb);
	FUNC5(crtc, mode, adjusted_mode);
	FUNC6(crtc);
	FUNC8(crtc);
	/* update the hw version fpr dpm */
	radeon_crtc->hw_mode = *adjusted_mode;

	return 0;
}