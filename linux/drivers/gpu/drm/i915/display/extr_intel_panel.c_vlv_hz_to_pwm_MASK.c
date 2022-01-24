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
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct intel_connector {TYPE_1__ base; } ;
struct drm_i915_private {int rawclk_freq; } ;

/* Variables and functions */
 int /*<<< orphan*/  CBR1_VLV ; 
 int CBR_PWM_CLOCK_MUX_SELECT ; 
 int FUNC0 (int,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct drm_i915_private*) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 struct drm_i915_private* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static u32 FUNC6(struct intel_connector *connector, u32 pwm_freq_hz)
{
	struct drm_i915_private *dev_priv = FUNC5(connector->base.dev);
	int mul, clock;

	if ((FUNC1(CBR1_VLV) & CBR_PWM_CLOCK_MUX_SELECT) == 0) {
		if (FUNC2(dev_priv))
			clock = FUNC3(19200);
		else
			clock = FUNC4(25);
		mul = 16;
	} else {
		clock = FUNC3(dev_priv->rawclk_freq);
		mul = 128;
	}

	return FUNC0(clock, pwm_freq_hz * mul);
}