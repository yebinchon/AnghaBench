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
struct TYPE_2__ {scalar_t__ type; } ;
struct intel_hdmi {TYPE_1__ dp_dual_mode; int /*<<< orphan*/  ddc_bus; } ;
struct i2c_adapter {int dummy; } ;
struct drm_i915_private {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 scalar_t__ DRM_DP_DUAL_MODE_TYPE2_DVI ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,struct i2c_adapter*,int) ; 
 struct i2c_adapter* FUNC2 (struct drm_i915_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct intel_hdmi*) ; 
 struct drm_i915_private* FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5(struct intel_hdmi *hdmi, bool enable)
{
	struct drm_i915_private *dev_priv = FUNC4(FUNC3(hdmi));
	struct i2c_adapter *adapter =
		FUNC2(dev_priv, hdmi->ddc_bus);

	if (hdmi->dp_dual_mode.type < DRM_DP_DUAL_MODE_TYPE2_DVI)
		return;

	FUNC0("%s DP dual mode adaptor TMDS output\n",
		      enable ? "Enabling" : "Disabling");

	FUNC1(hdmi->dp_dual_mode.type,
					 adapter, enable);
}