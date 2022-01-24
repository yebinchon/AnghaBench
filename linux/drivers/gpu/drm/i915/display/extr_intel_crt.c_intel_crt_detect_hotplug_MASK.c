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
struct drm_device {int dummy; } ;
struct drm_connector {struct drm_device* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRT_HOTPLUG_FORCE_DETECT ; 
 int /*<<< orphan*/  CRT_HOTPLUG_INT_STATUS ; 
 int CRT_HOTPLUG_MONITOR_MASK ; 
 int CRT_HOTPLUG_MONITOR_NONE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (struct drm_i915_private*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct drm_i915_private*) ; 
 scalar_t__ FUNC5 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  PORT_HOTPLUG_EN ; 
 int /*<<< orphan*/  PORT_HOTPLUG_STAT ; 
 int /*<<< orphan*/  FUNC6 (struct drm_i915_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct drm_i915_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (struct drm_connector*) ; 
 struct drm_i915_private* FUNC9 (struct drm_device*) ; 
 int FUNC10 (struct drm_connector*) ; 

__attribute__((used)) static bool FUNC11(struct drm_connector *connector)
{
	struct drm_device *dev = connector->dev;
	struct drm_i915_private *dev_priv = FUNC9(dev);
	u32 stat;
	bool ret = false;
	int i, tries = 0;

	if (FUNC1(dev_priv))
		return FUNC8(connector);

	if (FUNC5(dev_priv))
		return FUNC10(connector);

	/*
	 * On 4 series desktop, CRT detect sequence need to be done twice
	 * to get a reliable result.
	 */

	if (FUNC4(dev_priv))
		tries = 2;
	else
		tries = 1;

	for (i = 0; i < tries ; i++) {
		/* turn on the FORCE_DETECT */
		FUNC6(dev_priv,
					      CRT_HOTPLUG_FORCE_DETECT,
					      CRT_HOTPLUG_FORCE_DETECT);
		/* wait for FORCE_DETECT to go off */
		if (FUNC7(dev_priv, PORT_HOTPLUG_EN,
					    CRT_HOTPLUG_FORCE_DETECT, 1000))
			FUNC0("timed out waiting for FORCE_DETECT to go off");
	}

	stat = FUNC2(PORT_HOTPLUG_STAT);
	if ((stat & CRT_HOTPLUG_MONITOR_MASK) != CRT_HOTPLUG_MONITOR_NONE)
		ret = true;

	/* clear the interrupt we just generated, if any */
	FUNC3(PORT_HOTPLUG_STAT, CRT_HOTPLUG_INT_STATUS);

	FUNC6(dev_priv, CRT_HOTPLUG_FORCE_DETECT, 0);

	return ret;
}