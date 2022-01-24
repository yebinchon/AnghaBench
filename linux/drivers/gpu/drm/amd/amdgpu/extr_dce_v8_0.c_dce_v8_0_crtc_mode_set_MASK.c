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
struct drm_framebuffer {int dummy; } ;
struct drm_display_mode {int dummy; } ;
struct drm_crtc {int dummy; } ;
struct amdgpu_crtc {struct drm_display_mode hw_mode; int /*<<< orphan*/  adjusted_clock; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct drm_crtc*,struct drm_display_mode*,struct drm_display_mode*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_crtc*,struct drm_display_mode*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_crtc*,struct drm_display_mode*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_crtc*,struct drm_framebuffer*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_crtc*) ; 
 struct amdgpu_crtc* FUNC6 (struct drm_crtc*) ; 

__attribute__((used)) static int FUNC7(struct drm_crtc *crtc,
				  struct drm_display_mode *mode,
				  struct drm_display_mode *adjusted_mode,
				  int x, int y, struct drm_framebuffer *old_fb)
{
	struct amdgpu_crtc *amdgpu_crtc = FUNC6(crtc);

	if (!amdgpu_crtc->adjusted_clock)
		return -EINVAL;

	FUNC3(crtc, adjusted_mode);
	FUNC2(crtc, adjusted_mode);
	FUNC4(crtc, old_fb, x, y, 0);
	FUNC0(crtc, mode, adjusted_mode);
	FUNC1(crtc);
	FUNC5(crtc);
	/* update the hw version fpr dpm */
	amdgpu_crtc->hw_mode = *adjusted_mode;

	return 0;
}