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
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {TYPE_1__ base; } ;
struct intel_digital_port {int /*<<< orphan*/  tc_lock_wakeref; int /*<<< orphan*/  tc_link_refcount; int /*<<< orphan*/  tc_lock; TYPE_2__ base; } ;
struct drm_i915_private {int dummy; } ;
typedef  int /*<<< orphan*/  intel_wakeref_t ;

/* Variables and functions */
 int /*<<< orphan*/  POWER_DOMAIN_DISPLAY_CORE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_i915_private*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct intel_digital_port*) ; 
 int /*<<< orphan*/  FUNC3 (struct intel_digital_port*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct drm_i915_private* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct intel_digital_port *dig_port,
				 int required_lanes)
{
	struct drm_i915_private *i915 = FUNC5(dig_port->base.base.dev);
	intel_wakeref_t wakeref;

	wakeref = FUNC1(i915, POWER_DOMAIN_DISPLAY_CORE);

	FUNC4(&dig_port->tc_lock);

	if (!dig_port->tc_link_refcount &&
	    FUNC2(dig_port))
		FUNC3(dig_port, required_lanes);

	FUNC0(dig_port->tc_lock_wakeref);
	dig_port->tc_lock_wakeref = wakeref;
}