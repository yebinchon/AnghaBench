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
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct intel_encoder {int /*<<< orphan*/  port; TYPE_1__ base; } ;
struct intel_digital_port {int dummy; } ;
struct intel_crtc_state {int dummy; } ;
struct drm_i915_private {int dummy; } ;
struct drm_connector_state {int dummy; } ;
typedef  enum phy { ____Placeholder_phy } phy ;

/* Variables and functions */
 struct intel_digital_port* FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (struct intel_crtc_state const*) ; 
 int /*<<< orphan*/  FUNC2 (struct intel_digital_port*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_i915_private*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct drm_i915_private*,int) ; 
 int FUNC5 (struct drm_i915_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct intel_digital_port*) ; 
 struct drm_i915_private* FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(struct intel_encoder *encoder,
			   const struct intel_crtc_state *crtc_state,
			   const struct drm_connector_state *conn_state)
{
	struct drm_i915_private *dev_priv = FUNC7(encoder->base.dev);
	struct intel_digital_port *dig_port = FUNC0(&encoder->base);
	enum phy phy = FUNC5(dev_priv, encoder->port);
	bool is_tc_port = FUNC4(dev_priv, phy);

	if (FUNC1(crtc_state) || is_tc_port)
		FUNC3(dev_priv,
						  FUNC2(dig_port));

	if (is_tc_port)
		FUNC6(dig_port);
}