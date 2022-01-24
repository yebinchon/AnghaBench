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
struct radeon_device {int dummy; } ;
struct radeon_crtc {int enabled; int /*<<< orphan*/  crtc_id; } ;
struct drm_device {int /*<<< orphan*/  num_crtcs; struct radeon_device* dev_private; } ;
struct drm_crtc {struct drm_device* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct radeon_device*) ; 
 int /*<<< orphan*/  ATOM_DISABLE ; 
 int /*<<< orphan*/  ATOM_ENABLE ; 
#define  DRM_MODE_DPMS_OFF 131 
#define  DRM_MODE_DPMS_ON 130 
#define  DRM_MODE_DPMS_STANDBY 129 
#define  DRM_MODE_DPMS_SUSPEND 128 
 int /*<<< orphan*/  FUNC2 (struct drm_crtc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_crtc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_crtc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC8 (struct radeon_device*) ; 
 struct radeon_crtc* FUNC9 (struct drm_crtc*) ; 

void FUNC10(struct drm_crtc *crtc, int mode)
{
	struct drm_device *dev = crtc->dev;
	struct radeon_device *rdev = dev->dev_private;
	struct radeon_crtc *radeon_crtc = FUNC9(crtc);

	switch (mode) {
	case DRM_MODE_DPMS_ON:
		radeon_crtc->enabled = true;
		FUNC3(crtc, ATOM_ENABLE);
		if (FUNC0(rdev) && !FUNC1(rdev))
			FUNC4(crtc, ATOM_ENABLE);
		FUNC2(crtc, ATOM_DISABLE);
		if (dev->num_crtcs > radeon_crtc->crtc_id)
			FUNC6(crtc);
		FUNC7(crtc);
		break;
	case DRM_MODE_DPMS_STANDBY:
	case DRM_MODE_DPMS_SUSPEND:
	case DRM_MODE_DPMS_OFF:
		if (dev->num_crtcs > radeon_crtc->crtc_id)
			FUNC5(crtc);
		if (radeon_crtc->enabled)
			FUNC2(crtc, ATOM_ENABLE);
		if (FUNC0(rdev) && !FUNC1(rdev))
			FUNC4(crtc, ATOM_DISABLE);
		FUNC3(crtc, ATOM_DISABLE);
		radeon_crtc->enabled = false;
		break;
	}
	/* adjust pm to dpms */
	FUNC8(rdev);
}