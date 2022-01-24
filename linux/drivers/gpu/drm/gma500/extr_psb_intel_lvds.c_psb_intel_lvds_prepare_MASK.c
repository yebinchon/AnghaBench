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
struct psb_intel_mode_device {int saveBLC_PWM_CTL; int backlight_duty_cycle; } ;
struct drm_psb_private {struct psb_intel_mode_device mode_dev; } ;
struct drm_encoder {struct drm_device* dev; } ;
struct drm_device {struct drm_psb_private* dev_private; } ;

/* Variables and functions */
 int BACKLIGHT_DUTY_CYCLE_MASK ; 
 int /*<<< orphan*/  BLC_PWM_CTL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_device*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_device*,int) ; 

__attribute__((used)) static void FUNC4(struct drm_encoder *encoder)
{
	struct drm_device *dev = encoder->dev;
	struct drm_psb_private *dev_priv = dev->dev_private;
	struct psb_intel_mode_device *mode_dev = &dev_priv->mode_dev;

	if (!FUNC1(dev, true))
		return;

	mode_dev->saveBLC_PWM_CTL = FUNC0(BLC_PWM_CTL);
	mode_dev->backlight_duty_cycle = (mode_dev->saveBLC_PWM_CTL &
					  BACKLIGHT_DUTY_CYCLE_MASK);

	FUNC3(dev, false);

	FUNC2(dev);
}