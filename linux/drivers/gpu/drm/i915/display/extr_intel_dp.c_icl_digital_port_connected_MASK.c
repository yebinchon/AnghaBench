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
struct intel_encoder {int /*<<< orphan*/  hpd_pin; int /*<<< orphan*/  port; TYPE_1__ base; } ;
struct intel_digital_port {int dummy; } ;
struct drm_i915_private {int dummy; } ;
typedef  enum phy { ____Placeholder_phy } phy ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct intel_digital_port* FUNC1 (TYPE_1__*) ; 
 int FUNC2 (struct drm_i915_private*,struct intel_digital_port*) ; 
 scalar_t__ FUNC3 (struct drm_i915_private*,int) ; 
 scalar_t__ FUNC4 (struct drm_i915_private*,int) ; 
 int FUNC5 (struct drm_i915_private*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct intel_digital_port*) ; 
 struct drm_i915_private* FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC8(struct intel_encoder *encoder)
{
	struct drm_i915_private *dev_priv = FUNC7(encoder->base.dev);
	struct intel_digital_port *dig_port = FUNC1(&encoder->base);
	enum phy phy = FUNC5(dev_priv, encoder->port);

	if (FUNC3(dev_priv, phy))
		return FUNC2(dev_priv, dig_port);
	else if (FUNC4(dev_priv, phy))
		return FUNC6(dig_port);
	else
		FUNC0(encoder->hpd_pin);

	return false;
}