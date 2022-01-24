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
struct intel_hdcp_shim {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  streams; } ;
struct intel_hdcp {int hdcp2_supported; int /*<<< orphan*/  cp_irq_queue; int /*<<< orphan*/  prop_work; int /*<<< orphan*/  check_work; int /*<<< orphan*/  mutex; struct intel_hdcp_shim const* shim; TYPE_1__ port_data; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct intel_connector {TYPE_2__ base; struct intel_hdcp hdcp; } ;
struct drm_i915_private {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct intel_connector*,struct intel_hdcp_shim const*) ; 
 int /*<<< orphan*/  intel_hdcp_check_work ; 
 int /*<<< orphan*/  intel_hdcp_prop_work ; 
 scalar_t__ FUNC5 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct drm_i915_private* FUNC8 (int /*<<< orphan*/ ) ; 

int FUNC9(struct intel_connector *connector,
		    const struct intel_hdcp_shim *shim)
{
	struct drm_i915_private *dev_priv = FUNC8(connector->base.dev);
	struct intel_hdcp *hdcp = &connector->hdcp;
	int ret;

	if (!shim)
		return -EINVAL;

	if (FUNC5(dev_priv))
		FUNC4(connector, shim);

	ret =
	FUNC2(&connector->base,
							 hdcp->hdcp2_supported);
	if (ret) {
		hdcp->hdcp2_supported = false;
		FUNC6(hdcp->port_data.streams);
		return ret;
	}

	hdcp->shim = shim;
	FUNC7(&hdcp->mutex);
	FUNC0(&hdcp->check_work, intel_hdcp_check_work);
	FUNC1(&hdcp->prop_work, intel_hdcp_prop_work);
	FUNC3(&hdcp->cp_irq_queue);

	return 0;
}