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
struct radeon_crtc {scalar_t__ crtc_id; scalar_t__ rmx_type; } ;
struct drm_framebuffer {int dummy; } ;
struct drm_display_mode {int dummy; } ;
struct drm_crtc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ RMX_OFF ; 
 int /*<<< orphan*/  FUNC1 (struct drm_crtc*,int,int,struct drm_framebuffer*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_crtc*,struct drm_display_mode*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_crtc*,struct drm_display_mode*) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_crtc*,struct drm_display_mode*) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_crtc*,struct drm_display_mode*) ; 
 struct radeon_crtc* FUNC7 (struct drm_crtc*) ; 

__attribute__((used)) static int FUNC8(struct drm_crtc *crtc,
				 struct drm_display_mode *mode,
				 struct drm_display_mode *adjusted_mode,
				 int x, int y, struct drm_framebuffer *old_fb)
{
	struct radeon_crtc *radeon_crtc = FUNC7(crtc);

	/* TODO TV */
	FUNC1(crtc, x, y, old_fb);
	FUNC5(crtc, adjusted_mode);
	FUNC6(crtc, adjusted_mode);
	FUNC4(crtc, adjusted_mode);
	if (radeon_crtc->crtc_id == 0) {
		FUNC3(crtc, adjusted_mode);
	} else {
		if (radeon_crtc->rmx_type != RMX_OFF) {
			/* FIXME: only first crtc has rmx what should we
			 * do ?
			 */
			FUNC0("Mode need scaling but only first crtc can do that.\n");
		}
	}
	FUNC2(crtc);
	return 0;
}