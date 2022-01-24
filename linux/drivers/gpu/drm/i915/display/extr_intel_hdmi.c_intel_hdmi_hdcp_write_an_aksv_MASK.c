#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct intel_hdmi {int /*<<< orphan*/  ddc_bus; } ;
struct TYPE_5__ {TYPE_1__* dev; } ;
struct TYPE_6__ {TYPE_2__ base; } ;
struct intel_digital_port {TYPE_3__ base; struct intel_hdmi hdmi; } ;
struct i2c_adapter {int dummy; } ;
struct drm_i915_private {int dummy; } ;
struct TYPE_4__ {struct drm_i915_private* dev_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  DRM_HDCP_AN_LEN ; 
 int /*<<< orphan*/  DRM_HDCP_DDC_AN ; 
 struct i2c_adapter* FUNC1 (struct drm_i915_private*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct i2c_adapter*) ; 
 int FUNC3 (struct intel_digital_port*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static
int FUNC4(struct intel_digital_port *intel_dig_port,
				  u8 *an)
{
	struct intel_hdmi *hdmi = &intel_dig_port->hdmi;
	struct drm_i915_private *dev_priv =
		intel_dig_port->base.base.dev->dev_private;
	struct i2c_adapter *adapter = FUNC1(dev_priv,
							      hdmi->ddc_bus);
	int ret;

	ret = FUNC3(intel_dig_port, DRM_HDCP_DDC_AN, an,
				    DRM_HDCP_AN_LEN);
	if (ret) {
		FUNC0("Write An over DDC failed (%d)\n", ret);
		return ret;
	}

	ret = FUNC2(adapter);
	if (ret < 0) {
		FUNC0("Failed to output aksv (%d)\n", ret);
		return ret;
	}
	return 0;
}