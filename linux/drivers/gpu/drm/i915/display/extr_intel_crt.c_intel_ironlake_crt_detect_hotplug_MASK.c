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
struct intel_crt {int /*<<< orphan*/  adpa_reg; scalar_t__ force_hotplug_required; } ;
struct drm_i915_private {int dummy; } ;
struct drm_device {int dummy; } ;
struct drm_connector {struct drm_device* dev; } ;

/* Variables and functions */
 int ADPA_CRT_HOTPLUG_FORCE_TRIGGER ; 
 int ADPA_CRT_HOTPLUG_MONITOR_MASK ; 
 int ADPA_DAC_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int FUNC1 (struct drm_i915_private*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct intel_crt* FUNC5 (struct drm_connector*) ; 
 scalar_t__ FUNC6 (struct drm_i915_private*,int /*<<< orphan*/ ,int,int) ; 
 struct drm_i915_private* FUNC7 (struct drm_device*) ; 

__attribute__((used)) static bool FUNC8(struct drm_connector *connector)
{
	struct drm_device *dev = connector->dev;
	struct intel_crt *crt = FUNC5(connector);
	struct drm_i915_private *dev_priv = FUNC7(dev);
	u32 adpa;
	bool ret;

	/* The first time through, trigger an explicit detection cycle */
	if (crt->force_hotplug_required) {
		bool turn_off_dac = FUNC1(dev_priv);
		u32 save_adpa;

		crt->force_hotplug_required = 0;

		save_adpa = adpa = FUNC2(crt->adpa_reg);
		FUNC0("trigger hotplug detect cycle: adpa=0x%x\n", adpa);

		adpa |= ADPA_CRT_HOTPLUG_FORCE_TRIGGER;
		if (turn_off_dac)
			adpa &= ~ADPA_DAC_ENABLE;

		FUNC3(crt->adpa_reg, adpa);

		if (FUNC6(dev_priv,
					    crt->adpa_reg,
					    ADPA_CRT_HOTPLUG_FORCE_TRIGGER,
					    1000))
			FUNC0("timed out waiting for FORCE_TRIGGER");

		if (turn_off_dac) {
			FUNC3(crt->adpa_reg, save_adpa);
			FUNC4(crt->adpa_reg);
		}
	}

	/* Check the status to see if both blue and green are on now */
	adpa = FUNC2(crt->adpa_reg);
	if ((adpa & ADPA_CRT_HOTPLUG_MONITOR_MASK) != 0)
		ret = true;
	else
		ret = false;
	FUNC0("ironlake hotplug adpa=0x%x, result %d\n", adpa, ret);

	return ret;
}