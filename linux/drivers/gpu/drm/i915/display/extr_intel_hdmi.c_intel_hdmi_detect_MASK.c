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
struct intel_hdmi {int /*<<< orphan*/  cec_notifier; } ;
struct intel_encoder {int dummy; } ;
struct drm_i915_private {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  id; } ;
struct drm_connector {int /*<<< orphan*/  name; TYPE_1__ base; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  intel_wakeref_t ;
typedef  enum drm_connector_status { ____Placeholder_drm_connector_status } drm_connector_status ;
struct TYPE_4__ {struct intel_encoder base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  POWER_DOMAIN_GMBUS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int connector_status_connected ; 
 int connector_status_disconnected ; 
 TYPE_2__* FUNC3 (struct intel_hdmi*) ; 
 struct intel_hdmi* FUNC4 (struct drm_connector*) ; 
 int /*<<< orphan*/  FUNC5 (struct intel_encoder*) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_i915_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_i915_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct drm_connector*) ; 
 int /*<<< orphan*/  FUNC10 (struct drm_connector*) ; 
 struct drm_i915_private* FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static enum drm_connector_status
FUNC12(struct drm_connector *connector, bool force)
{
	enum drm_connector_status status = connector_status_disconnected;
	struct drm_i915_private *dev_priv = FUNC11(connector->dev);
	struct intel_hdmi *intel_hdmi = FUNC4(connector);
	struct intel_encoder *encoder = &FUNC3(intel_hdmi)->base;
	intel_wakeref_t wakeref;

	FUNC0("[CONNECTOR:%d:%s]\n",
		      connector->base.id, connector->name);

	wakeref = FUNC7(dev_priv, POWER_DOMAIN_GMBUS);

	if (FUNC1(dev_priv) >= 11 &&
	    !FUNC5(encoder))
		goto out;

	FUNC10(connector);

	if (FUNC9(connector))
		status = connector_status_connected;

out:
	FUNC8(dev_priv, POWER_DOMAIN_GMBUS, wakeref);

	if (status != connector_status_connected)
		FUNC2(intel_hdmi->cec_notifier);

	/*
	 * Make sure the refs for power wells enabled during detect are
	 * dropped to avoid a new detect cycle triggered by HPD polling.
	 */
	FUNC6(dev_priv);

	return status;
}