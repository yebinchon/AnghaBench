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
struct drm_psb_private {TYPE_1__* lvds_bl; } ;
struct drm_device {int /*<<< orphan*/  dev; scalar_t__ dev_private; } ;
struct TYPE_2__ {scalar_t__ pol; } ;

/* Variables and functions */
 scalar_t__ BLC_POLARITY_INVERSE ; 
 int /*<<< orphan*/  BLC_PWM_CTL ; 
 int BRIGHTNESS_MAX_LEVEL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int PSB_BACKLIGHT_PWM_CTL_SHIFT ; 
 int PSB_BACKLIGHT_PWM_POLARITY_BIT_CLEAR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC3 (struct drm_device*) ; 

__attribute__((used)) static int FUNC4(struct drm_device *dev, int level)
{
	struct drm_psb_private *dev_priv =
			(struct drm_psb_private *)dev->dev_private;

	u32 max_pwm_blc;
	u32 blc_pwm_duty_cycle;

	max_pwm_blc = FUNC3(dev);

	/*BLC_PWM_CTL Should be initiated while backlight device init*/
	FUNC0(max_pwm_blc == 0);

	blc_pwm_duty_cycle = level * max_pwm_blc / BRIGHTNESS_MAX_LEVEL;

	if (dev_priv->lvds_bl->pol == BLC_POLARITY_INVERSE)
		blc_pwm_duty_cycle = max_pwm_blc - blc_pwm_duty_cycle;

	blc_pwm_duty_cycle &= PSB_BACKLIGHT_PWM_POLARITY_BIT_CLEAR;
	FUNC1(BLC_PWM_CTL,
		  (max_pwm_blc << PSB_BACKLIGHT_PWM_CTL_SHIFT) |
		  (blc_pwm_duty_cycle));

        FUNC2(dev->dev, "Backlight lvds set brightness %08x\n",
		  (max_pwm_blc << PSB_BACKLIGHT_PWM_CTL_SHIFT) |
		  (blc_pwm_duty_cycle));

	return 0;
}