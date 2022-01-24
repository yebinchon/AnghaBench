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
struct gma_encoder {struct cdv_intel_dp* dev_priv; TYPE_1__ base; } ;
struct drm_device {int dummy; } ;
struct cdv_intel_dp {int backlight_off_delay; } ;

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
	struct cdv_intel_dp *intel_dp = intel_encoder->dev_priv;
	u32 pp;

	FUNC0("\n");
	FUNC3(dev);
	FUNC4(10);
	pp = FUNC1(PP_CONTROL);

	pp &= ~EDP_BLC_ENABLE;
	FUNC2(PP_CONTROL, pp);
	FUNC4(intel_dp->backlight_off_delay);
}