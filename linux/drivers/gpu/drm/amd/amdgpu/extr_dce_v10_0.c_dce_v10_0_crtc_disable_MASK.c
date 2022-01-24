#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct drm_device {struct amdgpu_device* dev_private; } ;
struct drm_crtc {TYPE_2__* primary; struct drm_device* dev; } ;
struct TYPE_8__ {int num_crtc; TYPE_3__** crtcs; } ;
struct amdgpu_device {TYPE_4__ mode_info; } ;
struct amdgpu_crtc {int crtc_id; int pll_id; int /*<<< orphan*/ * connector; int /*<<< orphan*/ * encoder; scalar_t__ adjusted_clock; } ;
struct amdgpu_bo {int dummy; } ;
struct amdgpu_atom_ss {int dummy; } ;
struct TYPE_7__ {int pll_id; scalar_t__ enabled; } ;
struct TYPE_6__ {TYPE_1__* fb; } ;
struct TYPE_5__ {int /*<<< orphan*/ * obj; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATOM_DISABLE ; 
 int /*<<< orphan*/  ATOM_ENABLE ; 
#define  ATOM_PPLL0 130 
#define  ATOM_PPLL1 129 
#define  ATOM_PPLL2 128 
 int ATOM_PPLL_INVALID ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  DRM_MODE_DPMS_OFF ; 
 int /*<<< orphan*/  FUNC1 (struct drm_crtc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_crtc*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct amdgpu_atom_ss*) ; 
 int FUNC3 (struct amdgpu_bo*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct amdgpu_bo*) ; 
 int /*<<< orphan*/  FUNC5 (struct amdgpu_bo*) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_crtc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_crtc*,int) ; 
 struct amdgpu_bo* FUNC8 (int /*<<< orphan*/ ) ; 
 struct amdgpu_crtc* FUNC9 (struct drm_crtc*) ; 
 scalar_t__ FUNC10 (int) ; 

__attribute__((used)) static void FUNC11(struct drm_crtc *crtc)
{
	struct amdgpu_crtc *amdgpu_crtc = FUNC9(crtc);
	struct drm_device *dev = crtc->dev;
	struct amdgpu_device *adev = dev->dev_private;
	struct amdgpu_atom_ss ss;
	int i;

	FUNC6(crtc, DRM_MODE_DPMS_OFF);
	if (crtc->primary->fb) {
		int r;
		struct amdgpu_bo *abo;

		abo = FUNC8(crtc->primary->fb->obj[0]);
		r = FUNC3(abo, true);
		if (FUNC10(r))
			FUNC0("failed to reserve abo before unpin\n");
		else {
			FUNC4(abo);
			FUNC5(abo);
		}
	}
	/* disable the GRPH */
	FUNC7(crtc, false);

	FUNC1(crtc, ATOM_ENABLE);

	for (i = 0; i < adev->mode_info.num_crtc; i++) {
		if (adev->mode_info.crtcs[i] &&
		    adev->mode_info.crtcs[i]->enabled &&
		    i != amdgpu_crtc->crtc_id &&
		    amdgpu_crtc->pll_id == adev->mode_info.crtcs[i]->pll_id) {
			/* one other crtc is using this pll don't turn
			 * off the pll
			 */
			goto done;
		}
	}

	switch (amdgpu_crtc->pll_id) {
	case ATOM_PPLL0:
	case ATOM_PPLL1:
	case ATOM_PPLL2:
		/* disable the ppll */
		FUNC2(crtc, amdgpu_crtc->crtc_id, amdgpu_crtc->pll_id,
					  0, 0, ATOM_DISABLE, 0, 0, 0, 0, 0, false, &ss);
		break;
	default:
		break;
	}
done:
	amdgpu_crtc->pll_id = ATOM_PPLL_INVALID;
	amdgpu_crtc->adjusted_clock = 0;
	amdgpu_crtc->encoder = NULL;
	amdgpu_crtc->connector = NULL;
}