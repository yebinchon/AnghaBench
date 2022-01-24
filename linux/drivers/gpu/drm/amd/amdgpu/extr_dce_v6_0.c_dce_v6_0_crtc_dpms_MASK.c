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
struct drm_device {struct amdgpu_device* dev_private; } ;
struct drm_crtc {struct drm_device* dev; } ;
struct amdgpu_device {int /*<<< orphan*/  pageflip_irq; int /*<<< orphan*/  crtc_irq; } ;
struct amdgpu_crtc {int enabled; int /*<<< orphan*/  crtc_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATOM_DISABLE ; 
 int /*<<< orphan*/  ATOM_ENABLE ; 
#define  DRM_MODE_DPMS_OFF 131 
#define  DRM_MODE_DPMS_ON 130 
#define  DRM_MODE_DPMS_STANDBY 129 
#define  DRM_MODE_DPMS_SUSPEND 128 
 int /*<<< orphan*/  FUNC0 (struct drm_crtc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_crtc*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (struct amdgpu_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct amdgpu_device*,int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_crtc*) ; 
 struct amdgpu_crtc* FUNC8 (struct drm_crtc*) ; 

__attribute__((used)) static void FUNC9(struct drm_crtc *crtc, int mode)
{
	struct drm_device *dev = crtc->dev;
	struct amdgpu_device *adev = dev->dev_private;
	struct amdgpu_crtc *amdgpu_crtc = FUNC8(crtc);
	unsigned type;

	switch (mode) {
	case DRM_MODE_DPMS_ON:
		amdgpu_crtc->enabled = true;
		FUNC1(crtc, ATOM_ENABLE);
		FUNC0(crtc, ATOM_DISABLE);
		/* Make sure VBLANK and PFLIP interrupts are still enabled */
		type = FUNC2(adev,
						amdgpu_crtc->crtc_id);
		FUNC3(adev, &adev->crtc_irq, type);
		FUNC3(adev, &adev->pageflip_irq, type);
		FUNC7(crtc);
		FUNC5(crtc);
		break;
	case DRM_MODE_DPMS_STANDBY:
	case DRM_MODE_DPMS_SUSPEND:
	case DRM_MODE_DPMS_OFF:
		FUNC6(crtc);
		if (amdgpu_crtc->enabled)
			FUNC0(crtc, ATOM_ENABLE);
		FUNC1(crtc, ATOM_DISABLE);
		amdgpu_crtc->enabled = false;
		break;
	}
	/* adjust pm to dpms */
	FUNC4(adev);
}