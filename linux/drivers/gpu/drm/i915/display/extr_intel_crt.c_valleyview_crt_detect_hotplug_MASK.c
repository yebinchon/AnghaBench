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
struct TYPE_2__ {int /*<<< orphan*/  hpd_pin; } ;
struct intel_crt {TYPE_1__ base; int /*<<< orphan*/  adpa_reg; } ;
struct drm_i915_private {int dummy; } ;
struct drm_device {int dummy; } ;
struct drm_connector {struct drm_device* dev; } ;

/* Variables and functions */
 int ADPA_CRT_HOTPLUG_FORCE_TRIGGER ; 
 int ADPA_CRT_HOTPLUG_MONITOR_MASK ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 struct intel_crt* FUNC3 (struct drm_connector*) ; 
 scalar_t__ FUNC4 (struct drm_i915_private*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC5 (struct drm_i915_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_i915_private*,int /*<<< orphan*/ ) ; 
 struct drm_i915_private* FUNC7 (struct drm_device*) ; 

__attribute__((used)) static bool FUNC8(struct drm_connector *connector)
{
	struct drm_device *dev = connector->dev;
	struct intel_crt *crt = FUNC3(connector);
	struct drm_i915_private *dev_priv = FUNC7(dev);
	bool reenable_hpd;
	u32 adpa;
	bool ret;
	u32 save_adpa;

	/*
	 * Doing a force trigger causes a hpd interrupt to get sent, which can
	 * get us stuck in a loop if we're polling:
	 *  - We enable power wells and reset the ADPA
	 *  - output_poll_exec does force probe on VGA, triggering a hpd
	 *  - HPD handler waits for poll to unlock dev->mode_config.mutex
	 *  - output_poll_exec shuts off the ADPA, unlocks
	 *    dev->mode_config.mutex
	 *  - HPD handler runs, resets ADPA and brings us back to the start
	 *
	 * Just disable HPD interrupts here to prevent this
	 */
	reenable_hpd = FUNC5(dev_priv, crt->base.hpd_pin);

	save_adpa = adpa = FUNC1(crt->adpa_reg);
	FUNC0("trigger hotplug detect cycle: adpa=0x%x\n", adpa);

	adpa |= ADPA_CRT_HOTPLUG_FORCE_TRIGGER;

	FUNC2(crt->adpa_reg, adpa);

	if (FUNC4(dev_priv, crt->adpa_reg,
				    ADPA_CRT_HOTPLUG_FORCE_TRIGGER, 1000)) {
		FUNC0("timed out waiting for FORCE_TRIGGER");
		FUNC2(crt->adpa_reg, save_adpa);
	}

	/* Check the status to see if both blue and green are on now */
	adpa = FUNC1(crt->adpa_reg);
	if ((adpa & ADPA_CRT_HOTPLUG_MONITOR_MASK) != 0)
		ret = true;
	else
		ret = false;

	FUNC0("valleyview hotplug adpa=0x%x, result %d\n", adpa, ret);

	if (reenable_hpd)
		FUNC6(dev_priv, crt->base.hpd_pin);

	return ret;
}