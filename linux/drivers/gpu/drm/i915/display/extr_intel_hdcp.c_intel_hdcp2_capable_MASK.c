#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct intel_hdcp {TYPE_1__* shim; int /*<<< orphan*/  hdcp2_supported; } ;
struct intel_digital_port {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct intel_connector {struct intel_hdcp hdcp; TYPE_2__ base; } ;
struct drm_i915_private {int /*<<< orphan*/  hdcp_comp_mutex; int /*<<< orphan*/  hdcp_master; int /*<<< orphan*/  hdcp_comp_added; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* hdcp_2_2_capable ) (struct intel_digital_port*,int*) ;} ;

/* Variables and functions */
 struct intel_digital_port* FUNC0 (struct intel_connector*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct intel_digital_port*,int*) ; 
 struct drm_i915_private* FUNC4 (int /*<<< orphan*/ ) ; 

bool FUNC5(struct intel_connector *connector)
{
	struct drm_i915_private *dev_priv = FUNC4(connector->base.dev);
	struct intel_digital_port *intel_dig_port = FUNC0(connector);
	struct intel_hdcp *hdcp = &connector->hdcp;
	bool capable = false;

	/* I915 support for HDCP2.2 */
	if (!hdcp->hdcp2_supported)
		return false;

	/* MEI interface is solid */
	FUNC1(&dev_priv->hdcp_comp_mutex);
	if (!dev_priv->hdcp_comp_added ||  !dev_priv->hdcp_master) {
		FUNC2(&dev_priv->hdcp_comp_mutex);
		return false;
	}
	FUNC2(&dev_priv->hdcp_comp_mutex);

	/* Sink's capability for HDCP2.2 */
	hdcp->shim->hdcp_2_2_capable(intel_dig_port, &capable);

	return capable;
}