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
struct mga_device {scalar_t__ type; } ;
struct drm_device {struct mga_device* dev_private; } ;
struct drm_crtc_helper_funcs {int /*<<< orphan*/  (* dpms ) (struct drm_crtc*,int /*<<< orphan*/ ) ;} ;
struct drm_crtc {struct drm_crtc_helper_funcs* helper_private; struct drm_device* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRM_MODE_DPMS_ON ; 
 scalar_t__ G200_EW3 ; 
 scalar_t__ G200_SE_A ; 
 scalar_t__ G200_SE_B ; 
 scalar_t__ G200_WB ; 
 int /*<<< orphan*/  MGAREG_SEQ_DATA ; 
 int /*<<< orphan*/  MGAREG_SEQ_INDEX ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_crtc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct drm_crtc *crtc)
{
	struct drm_device *dev = crtc->dev;
	struct mga_device *mdev = dev->dev_private;
	const struct drm_crtc_helper_funcs *crtc_funcs = crtc->helper_private;
	u8 tmp;

	if (mdev->type == G200_WB || mdev->type == G200_EW3)
		FUNC3(crtc);

	if (mdev->type == G200_SE_A || mdev->type == G200_SE_B) {
		FUNC4(50);
		FUNC2(1, 0x0);
		FUNC4(20);
		FUNC2(0, 0x3);
	} else {
		FUNC1(MGAREG_SEQ_INDEX, 0x1);
		tmp = FUNC0(MGAREG_SEQ_DATA);

		tmp &= ~0x20;
		FUNC2(0x1, tmp);
		FUNC2(0, 3);
	}
	crtc_funcs->dpms(crtc, DRM_MODE_DPMS_ON);
}