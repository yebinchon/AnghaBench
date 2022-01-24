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
struct TYPE_2__ {int saveBLC_PWM_CTL; } ;
struct drm_psb_private {TYPE_1__ regs; } ;
struct drm_device {struct drm_psb_private* dev_private; } ;

/* Variables and functions */
 int BACKLIGHT_DUTY_CYCLE_MASK ; 
 int BACKLIGHT_DUTY_CYCLE_SHIFT ; 
 int /*<<< orphan*/  BLC_PWM_CTL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (struct drm_device*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_device*) ; 

__attribute__((used)) static void FUNC4(struct drm_device *dev, int level)
{
	struct drm_psb_private *dev_priv = dev->dev_private;
	u32 blc_pwm_ctl;

	if (FUNC2(dev, false)) {
		blc_pwm_ctl = FUNC0(BLC_PWM_CTL);
		blc_pwm_ctl &= ~BACKLIGHT_DUTY_CYCLE_MASK;
		FUNC1(BLC_PWM_CTL,
				(blc_pwm_ctl |
				(level << BACKLIGHT_DUTY_CYCLE_SHIFT)));
		dev_priv->regs.saveBLC_PWM_CTL = (blc_pwm_ctl |
					(level << BACKLIGHT_DUTY_CYCLE_SHIFT));
		FUNC3(dev);
	} else {
		blc_pwm_ctl = dev_priv->regs.saveBLC_PWM_CTL &
				~BACKLIGHT_DUTY_CYCLE_MASK;
		dev_priv->regs.saveBLC_PWM_CTL = (blc_pwm_ctl |
					(level << BACKLIGHT_DUTY_CYCLE_SHIFT));
	}
}