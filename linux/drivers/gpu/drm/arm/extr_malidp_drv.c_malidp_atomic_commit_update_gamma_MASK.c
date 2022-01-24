#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct malidp_hw_device {int dummy; } ;
struct malidp_drm {struct malidp_hw_device* dev; } ;
struct malidp_crtc_state {int /*<<< orphan*/  gamma_coeffs; } ;
struct drm_crtc_state {TYPE_4__* gamma_lut; } ;
struct drm_crtc {TYPE_5__* state; } ;
struct TYPE_10__ {TYPE_2__* gamma_lut; int /*<<< orphan*/  color_mgmt_changed; } ;
struct TYPE_8__ {scalar_t__ id; } ;
struct TYPE_9__ {TYPE_3__ base; } ;
struct TYPE_6__ {scalar_t__ id; } ;
struct TYPE_7__ {TYPE_1__ base; } ;

/* Variables and functions */
 int /*<<< orphan*/  MALIDP_DE_DISPLAY_FUNC ; 
 int /*<<< orphan*/  MALIDP_DISP_FUNC_GAMMA ; 
 struct malidp_drm* FUNC0 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC1 (struct malidp_hw_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct malidp_hw_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct malidp_hw_device*,int /*<<< orphan*/ ) ; 
 struct malidp_crtc_state* FUNC4 (TYPE_5__*) ; 

__attribute__((used)) static void FUNC5(struct drm_crtc *crtc,
					      struct drm_crtc_state *old_state)
{
	struct malidp_drm *malidp = FUNC0(crtc);
	struct malidp_hw_device *hwdev = malidp->dev;

	if (!crtc->state->color_mgmt_changed)
		return;

	if (!crtc->state->gamma_lut) {
		FUNC1(hwdev,
				    MALIDP_DISP_FUNC_GAMMA,
				    MALIDP_DE_DISPLAY_FUNC);
	} else {
		struct malidp_crtc_state *mc =
			FUNC4(crtc->state);

		if (!old_state->gamma_lut || (crtc->state->gamma_lut->base.id !=
					      old_state->gamma_lut->base.id))
			FUNC3(hwdev, mc->gamma_coeffs);

		FUNC2(hwdev, MALIDP_DISP_FUNC_GAMMA,
				  MALIDP_DE_DISPLAY_FUNC);
	}
}