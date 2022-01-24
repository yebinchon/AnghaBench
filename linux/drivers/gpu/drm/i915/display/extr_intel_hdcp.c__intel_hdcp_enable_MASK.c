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
struct intel_hdcp {int hdcp_encrypted; } ;
struct TYPE_5__ {int id; } ;
struct TYPE_6__ {int name; TYPE_2__ base; TYPE_1__* dev; } ;
struct intel_connector {TYPE_3__ base; struct intel_hdcp hdcp; } ;
struct drm_i915_private {int dummy; } ;
struct TYPE_4__ {struct drm_i915_private* dev_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int ENXIO ; 
 int KEY_LOAD_TRIES ; 
 int /*<<< orphan*/  FUNC2 (struct intel_connector*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_i915_private*) ; 
 int FUNC4 (struct intel_connector*) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_i915_private*) ; 
 int FUNC6 (struct drm_i915_private*) ; 

__attribute__((used)) static int FUNC7(struct intel_connector *connector)
{
	struct intel_hdcp *hdcp = &connector->hdcp;
	struct drm_i915_private *dev_priv = connector->base.dev->dev_private;
	int i, ret, tries = 3;

	FUNC0("[%s:%d] HDCP is being enabled...\n",
		      connector->base.name, connector->base.base.id);

	if (!FUNC3(dev_priv)) {
		FUNC1("HDCP key Load is not possible\n");
		return -ENXIO;
	}

	for (i = 0; i < KEY_LOAD_TRIES; i++) {
		ret = FUNC6(dev_priv);
		if (!ret)
			break;
		FUNC5(dev_priv);
	}
	if (ret) {
		FUNC1("Could not load HDCP keys, (%d)\n", ret);
		return ret;
	}

	/* Incase of authentication failures, HDCP spec expects reauth. */
	for (i = 0; i < tries; i++) {
		ret = FUNC4(connector);
		if (!ret) {
			hdcp->hdcp_encrypted = true;
			return 0;
		}

		FUNC0("HDCP Auth failure (%d)\n", ret);

		/* Ensuring HDCP encryption and signalling are stopped. */
		FUNC2(connector);
	}

	FUNC0("HDCP authentication failed (%d tries/%d)\n", tries, ret);
	return ret;
}