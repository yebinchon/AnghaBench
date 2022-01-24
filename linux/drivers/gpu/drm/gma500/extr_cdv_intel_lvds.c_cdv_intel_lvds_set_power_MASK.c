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
typedef  int u32 ;
struct TYPE_2__ {int /*<<< orphan*/  backlight_duty_cycle; } ;
struct drm_psb_private {TYPE_1__ mode_dev; } ;
struct drm_encoder {int dummy; } ;
struct drm_device {struct drm_psb_private* dev_private; } ;

/* Variables and functions */
 int POWER_TARGET_ON ; 
 int /*<<< orphan*/  PP_CONTROL ; 
 int PP_ON ; 
 int /*<<< orphan*/  PP_STATUS ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_device*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_device*) ; 

__attribute__((used)) static void FUNC5(struct drm_device *dev,
				     struct drm_encoder *encoder, bool on)
{
	struct drm_psb_private *dev_priv = dev->dev_private;
	u32 pp_status;

	if (!FUNC3(dev, true))
		return;

	if (on) {
		FUNC1(PP_CONTROL, FUNC0(PP_CONTROL) |
			  POWER_TARGET_ON);
		do {
			pp_status = FUNC0(PP_STATUS);
		} while ((pp_status & PP_ON) == 0);

		FUNC2(dev,
				dev_priv->mode_dev.backlight_duty_cycle);
	} else {
		FUNC2(dev, 0);

		FUNC1(PP_CONTROL, FUNC0(PP_CONTROL) &
			  ~POWER_TARGET_ON);
		do {
			pp_status = FUNC0(PP_STATUS);
		} while (pp_status & PP_ON);
	}
	FUNC4(dev);
}