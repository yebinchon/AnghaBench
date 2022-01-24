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
typedef  int u8 ;
struct mga_device {int suspended; } ;
struct drm_device {struct mga_device* dev_private; } ;
struct drm_crtc {struct drm_device* dev; } ;

/* Variables and functions */
#define  DRM_MODE_DPMS_OFF 131 
#define  DRM_MODE_DPMS_ON 130 
#define  DRM_MODE_DPMS_STANDBY 129 
#define  DRM_MODE_DPMS_SUSPEND 128 
 int /*<<< orphan*/  MGAREG_CRTCEXT_DATA ; 
 int /*<<< orphan*/  MGAREG_CRTCEXT_INDEX ; 
 int /*<<< orphan*/  MGAREG_SEQ_DATA ; 
 int /*<<< orphan*/  MGAREG_SEQ_INDEX ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC6 (struct mga_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct mga_device*) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

__attribute__((used)) static void FUNC9(struct drm_crtc *crtc, int mode)
{
	struct drm_device *dev = crtc->dev;
	struct mga_device *mdev = dev->dev_private;
	u8 seq1 = 0, crtcext1 = 0;

	switch (mode) {
	case DRM_MODE_DPMS_ON:
		seq1 = 0;
		crtcext1 = 0;
		FUNC3(crtc);
		break;
	case DRM_MODE_DPMS_STANDBY:
		seq1 = 0x20;
		crtcext1 = 0x10;
		break;
	case DRM_MODE_DPMS_SUSPEND:
		seq1 = 0x20;
		crtcext1 = 0x20;
		break;
	case DRM_MODE_DPMS_OFF:
		seq1 = 0x20;
		crtcext1 = 0x30;
		break;
	}

#if 0
	if (mode == DRM_MODE_DPMS_OFF) {
		mga_suspend(crtc);
	}
#endif
	FUNC1(MGAREG_SEQ_INDEX, 0x01);
	seq1 |= FUNC0(MGAREG_SEQ_DATA) & ~0x20;
	FUNC7(mdev);
	FUNC6(mdev);
	FUNC1(MGAREG_SEQ_DATA, seq1);
	FUNC8(20);
	FUNC1(MGAREG_CRTCEXT_INDEX, 0x01);
	crtcext1 |= FUNC0(MGAREG_CRTCEXT_DATA) & ~0x30;
	FUNC1(MGAREG_CRTCEXT_DATA, crtcext1);

#if 0
	if (mode == DRM_MODE_DPMS_ON && mdev->suspended == true) {
		mga_resume(crtc);
		drm_helper_resume_force_mode(dev);
	}
#endif
}