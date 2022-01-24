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
struct drm_crtc {struct drm_device* dev; } ;

/* Variables and functions */
 scalar_t__ G200_EW3 ; 
 scalar_t__ G200_SE_A ; 
 scalar_t__ G200_SE_B ; 
 scalar_t__ G200_WB ; 
 int /*<<< orphan*/  MGAREG_CRTC_DATA ; 
 int /*<<< orphan*/  MGAREG_CRTC_INDEX ; 
 int /*<<< orphan*/  MGAREG_SEQ_DATA ; 
 int /*<<< orphan*/  MGAREG_SEQ_INDEX ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static void FUNC6(struct drm_crtc *crtc)
{
	struct drm_device *dev = crtc->dev;
	struct mga_device *mdev = dev->dev_private;
	u8 tmp;

	/*	mga_resume(crtc);*/

	FUNC1(MGAREG_CRTC_INDEX, 0x11);
	tmp = FUNC0(MGAREG_CRTC_DATA);
	FUNC2(0x11, tmp | 0x80);

	if (mdev->type == G200_SE_A || mdev->type == G200_SE_B) {
		FUNC3(0, 1);
		FUNC5(50);
		FUNC3(1, 0x20);
		FUNC5(20);
	} else {
		FUNC1(MGAREG_SEQ_INDEX, 0x1);
		tmp = FUNC0(MGAREG_SEQ_DATA);

		/* start sync reset */
		FUNC3(0, 1);
		FUNC3(1, tmp | 0x20);
	}

	if (mdev->type == G200_WB || mdev->type == G200_EW3)
		FUNC4(crtc);

	FUNC2(17, 0);
}