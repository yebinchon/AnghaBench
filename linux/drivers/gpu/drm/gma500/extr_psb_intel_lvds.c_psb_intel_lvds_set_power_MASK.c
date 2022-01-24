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
typedef  int u32 ;
struct psb_intel_mode_device {int /*<<< orphan*/  backlight_duty_cycle; } ;
struct drm_psb_private {struct psb_intel_mode_device mode_dev; } ;
struct drm_device {int /*<<< orphan*/  dev; struct drm_psb_private* dev_private; } ;

/* Variables and functions */
 int POWER_TARGET_ON ; 
 int /*<<< orphan*/  PP_CONTROL ; 
 int PP_ON ; 
 int /*<<< orphan*/  PP_STATUS ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_device*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct drm_device *dev, bool on)
{
	struct drm_psb_private *dev_priv = dev->dev_private;
	struct psb_intel_mode_device *mode_dev = &dev_priv->mode_dev;
	u32 pp_status;

	if (!FUNC3(dev, true)) {
	        FUNC2(dev->dev, "set power, chip off!\n");
		return;
        }
        
	if (on) {
		FUNC1(PP_CONTROL, FUNC0(PP_CONTROL) |
			  POWER_TARGET_ON);
		do {
			pp_status = FUNC0(PP_STATUS);
		} while ((pp_status & PP_ON) == 0);

		FUNC5(dev,
					     mode_dev->backlight_duty_cycle);
	} else {
		FUNC5(dev, 0);

		FUNC1(PP_CONTROL, FUNC0(PP_CONTROL) &
			  ~POWER_TARGET_ON);
		do {
			pp_status = FUNC0(PP_STATUS);
		} while (pp_status & PP_ON);
	}

	FUNC4(dev);
}