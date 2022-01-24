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
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct intel_encoder {TYPE_2__ base; } ;
struct intel_dp {int dummy; } ;
struct intel_digital_port {struct intel_encoder base; } ;
struct drm_i915_private {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  id; } ;
struct drm_connector {scalar_t__ status; int /*<<< orphan*/  name; TYPE_1__ base; } ;
typedef  int /*<<< orphan*/  intel_wakeref_t ;
typedef  enum intel_display_power_domain { ____Placeholder_intel_display_power_domain } intel_display_power_domain ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ connector_status_connected ; 
 struct intel_digital_port* FUNC1 (struct intel_dp*) ; 
 struct intel_dp* FUNC2 (struct drm_connector*) ; 
 int FUNC3 (struct intel_digital_port*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_i915_private*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_i915_private*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct intel_dp*) ; 
 int /*<<< orphan*/  FUNC7 (struct intel_dp*) ; 
 struct drm_i915_private* FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC9(struct drm_connector *connector)
{
	struct intel_dp *intel_dp = FUNC2(connector);
	struct intel_digital_port *dig_port = FUNC1(intel_dp);
	struct intel_encoder *intel_encoder = &dig_port->base;
	struct drm_i915_private *dev_priv = FUNC8(intel_encoder->base.dev);
	enum intel_display_power_domain aux_domain =
		FUNC3(dig_port);
	intel_wakeref_t wakeref;

	FUNC0("[CONNECTOR:%d:%s]\n",
		      connector->base.id, connector->name);
	FUNC7(intel_dp);

	if (connector->status != connector_status_connected)
		return;

	wakeref = FUNC4(dev_priv, aux_domain);

	FUNC6(intel_dp);

	FUNC5(dev_priv, aux_domain, wakeref);
}