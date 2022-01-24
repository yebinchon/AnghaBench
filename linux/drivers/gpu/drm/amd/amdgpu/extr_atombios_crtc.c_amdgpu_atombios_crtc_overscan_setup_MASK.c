#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct drm_display_mode {int crtc_vdisplay; int crtc_hdisplay; } ;
struct drm_device {struct amdgpu_device* dev_private; } ;
struct drm_crtc {struct drm_device* dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  atom_context; } ;
struct amdgpu_device {TYPE_1__ mode_info; } ;
struct amdgpu_crtc {int rmx_type; int h_border; int v_border; int /*<<< orphan*/  crtc_id; } ;
typedef  int /*<<< orphan*/  args ;
struct TYPE_5__ {void* usOverscanTop; void* usOverscanBottom; void* usOverscanLeft; void* usOverscanRight; int /*<<< orphan*/  ucCRTC; } ;
typedef  TYPE_2__ SET_CRTC_OVERSCAN_PS_ALLOCATION ;

/* Variables and functions */
 int /*<<< orphan*/  COMMAND ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
#define  RMX_ASPECT 130 
#define  RMX_CENTER 129 
#define  RMX_FULL 128 
 int /*<<< orphan*/  SetCRTC_OverScan ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 void* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 struct amdgpu_crtc* FUNC4 (struct drm_crtc*) ; 

void FUNC5(struct drm_crtc *crtc,
				  struct drm_display_mode *mode,
				  struct drm_display_mode *adjusted_mode)
{
	struct drm_device *dev = crtc->dev;
	struct amdgpu_device *adev = dev->dev_private;
	struct amdgpu_crtc *amdgpu_crtc = FUNC4(crtc);
	SET_CRTC_OVERSCAN_PS_ALLOCATION args;
	int index = FUNC0(COMMAND, SetCRTC_OverScan);
	int a1, a2;

	FUNC3(&args, 0, sizeof(args));

	args.ucCRTC = amdgpu_crtc->crtc_id;

	switch (amdgpu_crtc->rmx_type) {
	case RMX_CENTER:
		args.usOverscanTop = FUNC2((adjusted_mode->crtc_vdisplay - mode->crtc_vdisplay) / 2);
		args.usOverscanBottom = FUNC2((adjusted_mode->crtc_vdisplay - mode->crtc_vdisplay) / 2);
		args.usOverscanLeft = FUNC2((adjusted_mode->crtc_hdisplay - mode->crtc_hdisplay) / 2);
		args.usOverscanRight = FUNC2((adjusted_mode->crtc_hdisplay - mode->crtc_hdisplay) / 2);
		break;
	case RMX_ASPECT:
		a1 = mode->crtc_vdisplay * adjusted_mode->crtc_hdisplay;
		a2 = adjusted_mode->crtc_vdisplay * mode->crtc_hdisplay;

		if (a1 > a2) {
			args.usOverscanLeft = FUNC2((adjusted_mode->crtc_hdisplay - (a2 / mode->crtc_vdisplay)) / 2);
			args.usOverscanRight = FUNC2((adjusted_mode->crtc_hdisplay - (a2 / mode->crtc_vdisplay)) / 2);
		} else if (a2 > a1) {
			args.usOverscanTop = FUNC2((adjusted_mode->crtc_vdisplay - (a1 / mode->crtc_hdisplay)) / 2);
			args.usOverscanBottom = FUNC2((adjusted_mode->crtc_vdisplay - (a1 / mode->crtc_hdisplay)) / 2);
		}
		break;
	case RMX_FULL:
	default:
		args.usOverscanRight = FUNC2(amdgpu_crtc->h_border);
		args.usOverscanLeft = FUNC2(amdgpu_crtc->h_border);
		args.usOverscanBottom = FUNC2(amdgpu_crtc->v_border);
		args.usOverscanTop = FUNC2(amdgpu_crtc->v_border);
		break;
	}
	FUNC1(adev->mode_info.atom_context, index, (uint32_t *)&args);
}