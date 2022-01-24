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
struct TYPE_8__ {TYPE_3__** crtcs; } ;
struct radeon_device {int num_crtc; int /*<<< orphan*/  family; TYPE_4__ mode_info; } ;
struct radeon_crtc {int crtc_id; int pll_id; int /*<<< orphan*/ * connector; int /*<<< orphan*/ * encoder; scalar_t__ adjusted_clock; scalar_t__ crtc_offset; } ;
struct radeon_bo {int dummy; } ;
struct radeon_atom_ss {int dummy; } ;
struct drm_device {struct radeon_device* dev_private; } ;
struct drm_crtc {TYPE_2__* primary; struct drm_device* dev; } ;
struct TYPE_7__ {int pll_id; scalar_t__ enabled; } ;
struct TYPE_6__ {TYPE_1__* fb; } ;
struct TYPE_5__ {int /*<<< orphan*/ * obj; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct radeon_device*) ; 
 scalar_t__ FUNC1 (struct radeon_device*) ; 
 scalar_t__ FUNC2 (struct radeon_device*) ; 
 int /*<<< orphan*/  ATOM_DISABLE ; 
 int /*<<< orphan*/  ATOM_ENABLE ; 
#define  ATOM_PPLL0 130 
#define  ATOM_PPLL1 129 
#define  ATOM_PPLL2 128 
 int ATOM_PPLL_INVALID ; 
 scalar_t__ AVIVO_D1GRPH_ENABLE ; 
 int /*<<< orphan*/  CHIP_ARUBA ; 
 int /*<<< orphan*/  CHIP_BONAIRE ; 
 int /*<<< orphan*/  CHIP_HAWAII ; 
 int /*<<< orphan*/  CHIP_KAVERI ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  DRM_MODE_DPMS_OFF ; 
 scalar_t__ EVERGREEN_GRPH_ENABLE ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_crtc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_crtc*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct radeon_atom_ss*) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_crtc*,int /*<<< orphan*/ ) ; 
 struct radeon_bo* FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (struct radeon_bo*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct radeon_bo*) ; 
 int /*<<< orphan*/  FUNC11 (struct radeon_bo*) ; 
 struct radeon_crtc* FUNC12 (struct drm_crtc*) ; 
 scalar_t__ FUNC13 (int) ; 

__attribute__((used)) static void FUNC14(struct drm_crtc *crtc)
{
	struct radeon_crtc *radeon_crtc = FUNC12(crtc);
	struct drm_device *dev = crtc->dev;
	struct radeon_device *rdev = dev->dev_private;
	struct radeon_atom_ss ss;
	int i;

	FUNC5(crtc, DRM_MODE_DPMS_OFF);
	if (crtc->primary->fb) {
		int r;
		struct radeon_bo *rbo;

		rbo = FUNC8(crtc->primary->fb->obj[0]);
		r = FUNC9(rbo, false);
		if (FUNC13(r))
			FUNC3("failed to reserve rbo before unpin\n");
		else {
			FUNC10(rbo);
			FUNC11(rbo);
		}
	}
	/* disable the GRPH */
	if (FUNC1(rdev))
		FUNC4(EVERGREEN_GRPH_ENABLE + radeon_crtc->crtc_offset, 0);
	else if (FUNC0(rdev))
		FUNC4(AVIVO_D1GRPH_ENABLE + radeon_crtc->crtc_offset, 0);

	if (FUNC2(rdev))
		FUNC7(crtc, ATOM_ENABLE);

	for (i = 0; i < rdev->num_crtc; i++) {
		if (rdev->mode_info.crtcs[i] &&
		    rdev->mode_info.crtcs[i]->enabled &&
		    i != radeon_crtc->crtc_id &&
		    radeon_crtc->pll_id == rdev->mode_info.crtcs[i]->pll_id) {
			/* one other crtc is using this pll don't turn
			 * off the pll
			 */
			goto done;
		}
	}

	switch (radeon_crtc->pll_id) {
	case ATOM_PPLL1:
	case ATOM_PPLL2:
		/* disable the ppll */
		FUNC6(crtc, radeon_crtc->crtc_id, radeon_crtc->pll_id,
					  0, 0, ATOM_DISABLE, 0, 0, 0, 0, 0, false, &ss);
		break;
	case ATOM_PPLL0:
		/* disable the ppll */
		if ((rdev->family == CHIP_ARUBA) ||
		    (rdev->family == CHIP_KAVERI) ||
		    (rdev->family == CHIP_BONAIRE) ||
		    (rdev->family == CHIP_HAWAII))
			FUNC6(crtc, radeon_crtc->crtc_id, radeon_crtc->pll_id,
						  0, 0, ATOM_DISABLE, 0, 0, 0, 0, 0, false, &ss);
		break;
	default:
		break;
	}
done:
	radeon_crtc->pll_id = ATOM_PPLL_INVALID;
	radeon_crtc->adjusted_clock = 0;
	radeon_crtc->encoder = NULL;
	radeon_crtc->connector = NULL;
}