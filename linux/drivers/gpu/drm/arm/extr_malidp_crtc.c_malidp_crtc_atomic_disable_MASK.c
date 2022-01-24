#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct malidp_hw_device {int /*<<< orphan*/  pxlclk; TYPE_1__* hw; } ;
struct malidp_drm {struct malidp_hw_device* dev; } ;
struct drm_crtc_state {int dummy; } ;
struct drm_crtc {TYPE_2__* dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* enter_config_mode ) (struct malidp_hw_device*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct malidp_drm* FUNC2 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_crtc_state*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_crtc*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct malidp_hw_device*) ; 

__attribute__((used)) static void FUNC7(struct drm_crtc *crtc,
				       struct drm_crtc_state *old_state)
{
	struct malidp_drm *malidp = FUNC2(crtc);
	struct malidp_hw_device *hwdev = malidp->dev;
	int err;

	/* always disable planes on the CRTC that is being turned off */
	FUNC3(old_state, false);

	FUNC4(crtc);
	hwdev->hw->enter_config_mode(hwdev);

	FUNC1(hwdev->pxlclk);

	err = FUNC5(crtc->dev->dev);
	if (err < 0) {
		FUNC0("Failed to disable runtime power management: %d\n", err);
	}
}