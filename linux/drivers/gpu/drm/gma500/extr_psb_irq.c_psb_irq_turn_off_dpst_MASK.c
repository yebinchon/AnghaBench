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
struct drm_psb_private {int dummy; } ;
struct drm_device {scalar_t__ dev_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  HISTOGRAM_INT_CONTROL ; 
 int /*<<< orphan*/  PIPE_DPST_EVENT_ENABLE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PWM_CONTROL_LOGIC ; 
 int PWM_PHASEIN_INT_ENABLE ; 
 scalar_t__ FUNC2 (struct drm_device*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_psb_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC5(struct drm_device *dev)
{
	struct drm_psb_private *dev_priv =
	    (struct drm_psb_private *) dev->dev_private;
	u32 hist_reg;
	u32 pwm_reg;

	if (FUNC2(dev, false)) {
		FUNC1(0x00000000, HISTOGRAM_INT_CONTROL);
		hist_reg = FUNC0(HISTOGRAM_INT_CONTROL);

		FUNC4(dev_priv, 0, PIPE_DPST_EVENT_ENABLE);

		pwm_reg = FUNC0(PWM_CONTROL_LOGIC);
		FUNC1(pwm_reg & ~PWM_PHASEIN_INT_ENABLE,
							PWM_CONTROL_LOGIC);
		pwm_reg = FUNC0(PWM_CONTROL_LOGIC);

		FUNC3(dev);
	}
}