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
struct intel_dp {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  port; TYPE_1__ base; } ;
struct intel_digital_port {TYPE_2__ base; } ;
struct drm_i915_private {int dummy; } ;
typedef  enum phy { ____Placeholder_phy } phy ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_i915_private*) ; 
 struct intel_digital_port* FUNC1 (struct intel_dp*) ; 
 int /*<<< orphan*/  FUNC2 (struct intel_dp*) ; 
 scalar_t__ FUNC3 (struct drm_i915_private*,int) ; 
 int FUNC4 (struct drm_i915_private*,int /*<<< orphan*/ ) ; 
 struct drm_i915_private* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct intel_dp *intel_dp)
{
	struct intel_digital_port *dig_port = FUNC1(intel_dp);
	struct drm_i915_private *dev_priv = FUNC5(dig_port->base.base.dev);
	enum phy phy = FUNC4(dev_priv, dig_port->base.port);

	if (FUNC3(dev_priv, phy) &&
	    !FUNC0(dev_priv) &&
	    !FUNC2(intel_dp))
		return 540000;

	return 810000;
}