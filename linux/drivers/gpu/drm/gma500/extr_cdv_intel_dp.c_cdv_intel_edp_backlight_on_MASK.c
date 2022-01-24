#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {struct drm_device* dev; } ;
struct gma_encoder {TYPE_1__ base; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  EDP_BLC_ENABLE ; 
 int /*<<< orphan*/  PP_CONTROL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static void FUNC5 (struct gma_encoder *intel_encoder)
{
	struct drm_device *dev = intel_encoder->base.dev;
	u32 pp;

	FUNC0("\n");
	/*
	 * If we enable the backlight right away following a panel power
	 * on, we may see slight flicker as the panel syncs with the eDP
	 * link.  So delay a bit to make sure the image is solid before
	 * allowing it to appear.
	 */
	FUNC4(300);
	pp = FUNC1(PP_CONTROL);

	pp |= EDP_BLC_ENABLE;
	FUNC2(PP_CONTROL, pp);
	FUNC3(dev);
}