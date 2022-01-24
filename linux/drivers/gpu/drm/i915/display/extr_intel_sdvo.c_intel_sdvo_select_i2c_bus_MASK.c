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
typedef  int /*<<< orphan*/  u8 ;
struct sdvo_device_mapping {int /*<<< orphan*/  i2c_pin; scalar_t__ initialized; } ;
struct intel_sdvo {scalar_t__ port; int /*<<< orphan*/  i2c; } ;
struct TYPE_2__ {struct sdvo_device_mapping* sdvo_mappings; } ;
struct drm_i915_private {TYPE_1__ vbt; } ;

/* Variables and functions */
 int /*<<< orphan*/  GMBUS_PIN_DPB ; 
 scalar_t__ PORT_B ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_i915_private*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct drm_i915_private*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct drm_i915_private *dev_priv,
			  struct intel_sdvo *sdvo)
{
	struct sdvo_device_mapping *mapping;
	u8 pin;

	if (sdvo->port == PORT_B)
		mapping = &dev_priv->vbt.sdvo_mappings[0];
	else
		mapping = &dev_priv->vbt.sdvo_mappings[1];

	if (mapping->initialized &&
	    FUNC2(dev_priv, mapping->i2c_pin))
		pin = mapping->i2c_pin;
	else
		pin = GMBUS_PIN_DPB;

	sdvo->i2c = FUNC1(dev_priv, pin);

	/*
	 * With gmbus we should be able to drive sdvo i2c at 2MHz, but somehow
	 * our code totally fails once we start using gmbus. Hence fall back to
	 * bit banging for now.
	 */
	FUNC0(sdvo->i2c, true);
}