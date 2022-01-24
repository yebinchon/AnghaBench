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
struct intel_encoder {int /*<<< orphan*/  power_domain; } ;
struct intel_crt {struct intel_encoder base; } ;
struct i2c_adapter {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  crt_ddc_pin; } ;
struct drm_i915_private {TYPE_1__ vbt; } ;
struct drm_device {int dummy; } ;
struct drm_connector {struct drm_device* dev; } ;
typedef  int /*<<< orphan*/  intel_wakeref_t ;

/* Variables and functions */
 int /*<<< orphan*/  GMBUS_PIN_DPB ; 
 int /*<<< orphan*/  FUNC0 (struct drm_i915_private*) ; 
 struct intel_crt* FUNC1 (struct drm_connector*) ; 
 int FUNC2 (struct drm_connector*,struct i2c_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_i915_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_i915_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct i2c_adapter* FUNC5 (struct drm_i915_private*,int /*<<< orphan*/ ) ; 
 struct drm_i915_private* FUNC6 (struct drm_device*) ; 

__attribute__((used)) static int FUNC7(struct drm_connector *connector)
{
	struct drm_device *dev = connector->dev;
	struct drm_i915_private *dev_priv = FUNC6(dev);
	struct intel_crt *crt = FUNC1(connector);
	struct intel_encoder *intel_encoder = &crt->base;
	intel_wakeref_t wakeref;
	struct i2c_adapter *i2c;
	int ret;

	wakeref = FUNC3(dev_priv,
					  intel_encoder->power_domain);

	i2c = FUNC5(dev_priv, dev_priv->vbt.crt_ddc_pin);
	ret = FUNC2(connector, i2c);
	if (ret || !FUNC0(dev_priv))
		goto out;

	/* Try to probe digital port for output in DVI-I -> VGA mode. */
	i2c = FUNC5(dev_priv, GMBUS_PIN_DPB);
	ret = FUNC2(connector, i2c);

out:
	FUNC4(dev_priv, intel_encoder->power_domain, wakeref);

	return ret;
}