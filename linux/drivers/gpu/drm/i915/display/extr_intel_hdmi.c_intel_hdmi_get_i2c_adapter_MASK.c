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
struct intel_hdmi {int /*<<< orphan*/  ddc_bus; } ;
struct i2c_adapter {int dummy; } ;
struct drm_i915_private {int dummy; } ;
struct drm_connector {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 struct intel_hdmi* FUNC0 (struct drm_connector*) ; 
 struct i2c_adapter* FUNC1 (struct drm_i915_private*,int /*<<< orphan*/ ) ; 
 struct drm_i915_private* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct i2c_adapter *
FUNC3(struct drm_connector *connector)
{
	struct drm_i915_private *dev_priv = FUNC2(connector->dev);
	struct intel_hdmi *intel_hdmi = FUNC0(connector);

	return FUNC1(dev_priv, intel_hdmi->ddc_bus);
}