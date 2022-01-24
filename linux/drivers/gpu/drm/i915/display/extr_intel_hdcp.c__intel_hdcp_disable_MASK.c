#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct intel_hdcp {int hdcp_encrypted; TYPE_5__* shim; } ;
struct TYPE_7__ {int port; } ;
struct intel_digital_port {TYPE_2__ base; } ;
struct TYPE_8__ {int /*<<< orphan*/  id; } ;
struct TYPE_9__ {TYPE_3__ base; int /*<<< orphan*/  name; TYPE_1__* dev; } ;
struct intel_connector {TYPE_4__ base; struct intel_hdcp hdcp; } ;
struct drm_i915_private {int dummy; } ;
typedef  enum port { ____Placeholder_port } port ;
struct TYPE_10__ {int (* toggle_signalling ) (struct intel_digital_port*,int) ;} ;
struct TYPE_6__ {struct drm_i915_private* dev_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  ENCRYPT_STATUS_CHANGE_TIMEOUT_MS ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 struct intel_digital_port* FUNC5 (struct intel_connector*) ; 
 scalar_t__ FUNC6 (struct drm_i915_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct intel_digital_port*,int) ; 

__attribute__((used)) static int FUNC8(struct intel_connector *connector)
{
	struct intel_hdcp *hdcp = &connector->hdcp;
	struct drm_i915_private *dev_priv = connector->base.dev->dev_private;
	struct intel_digital_port *intel_dig_port = FUNC5(connector);
	enum port port = intel_dig_port->base.port;
	int ret;

	FUNC0("[%s:%d] HDCP is being disabled...\n",
		      connector->base.name, connector->base.base.id);

	hdcp->hdcp_encrypted = false;
	FUNC2(FUNC3(port), 0);
	if (FUNC6(dev_priv, FUNC4(port), ~0,
				    ENCRYPT_STATUS_CHANGE_TIMEOUT_MS)) {
		FUNC1("Failed to disable HDCP, timeout clearing status\n");
		return -ETIMEDOUT;
	}

	ret = hdcp->shim->toggle_signalling(intel_dig_port, false);
	if (ret) {
		FUNC1("Failed to disable HDCP signalling\n");
		return ret;
	}

	FUNC0("HDCP is disabled\n");
	return 0;
}