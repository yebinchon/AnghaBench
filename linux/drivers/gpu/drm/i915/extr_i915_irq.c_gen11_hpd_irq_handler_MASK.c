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
struct drm_i915_private {int dummy; } ;
typedef  int /*<<< orphan*/  long_pulse_detect_func ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int GEN11_DE_TBT_HOTPLUG_MASK ; 
 int GEN11_DE_TC_HOTPLUG_MASK ; 
 int /*<<< orphan*/  GEN11_TBT_HOTPLUG_CTL ; 
 int /*<<< orphan*/  GEN11_TC_HOTPLUG_CTL ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  gen11_port_hotplug_long_detect ; 
 int /*<<< orphan*/  gen12_port_hotplug_long_detect ; 
 int* hpd_gen11 ; 
 int* hpd_gen12 ; 
 int /*<<< orphan*/  FUNC4 (struct drm_i915_private*,int*,int*,int,int,int const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_i915_private*,int,int) ; 

__attribute__((used)) static void FUNC6(struct drm_i915_private *dev_priv, u32 iir)
{
	u32 pin_mask = 0, long_mask = 0;
	u32 trigger_tc = iir & GEN11_DE_TC_HOTPLUG_MASK;
	u32 trigger_tbt = iir & GEN11_DE_TBT_HOTPLUG_MASK;
	long_pulse_detect_func long_pulse_detect;
	const u32 *hpd;

	if (FUNC3(dev_priv) >= 12) {
		long_pulse_detect = gen12_port_hotplug_long_detect;
		hpd = hpd_gen12;
	} else {
		long_pulse_detect = gen11_port_hotplug_long_detect;
		hpd = hpd_gen11;
	}

	if (trigger_tc) {
		u32 dig_hotplug_reg;

		dig_hotplug_reg = FUNC1(GEN11_TC_HOTPLUG_CTL);
		FUNC2(GEN11_TC_HOTPLUG_CTL, dig_hotplug_reg);

		FUNC4(dev_priv, &pin_mask, &long_mask, trigger_tc,
				   dig_hotplug_reg, hpd, long_pulse_detect);
	}

	if (trigger_tbt) {
		u32 dig_hotplug_reg;

		dig_hotplug_reg = FUNC1(GEN11_TBT_HOTPLUG_CTL);
		FUNC2(GEN11_TBT_HOTPLUG_CTL, dig_hotplug_reg);

		FUNC4(dev_priv, &pin_mask, &long_mask, trigger_tbt,
				   dig_hotplug_reg, hpd, long_pulse_detect);
	}

	if (pin_mask)
		FUNC5(dev_priv, pin_mask, long_mask);
	else
		FUNC0("Unexpected DE HPD interrupt 0x%08x\n", iir);
}