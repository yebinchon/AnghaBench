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
struct intel_digital_port {int tc_mode; int /*<<< orphan*/  tc_port_name; TYPE_2__ base; } ;
struct drm_i915_private {int dummy; } ;
typedef  enum tc_port_mode { ____Placeholder_tc_port_mode } tc_port_mode ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct intel_digital_port*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct intel_digital_port*) ; 
 int /*<<< orphan*/  FUNC4 (struct intel_digital_port*) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_i915_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 struct drm_i915_private* FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct intel_digital_port *dig_port,
				     int required_lanes)
{
	struct drm_i915_private *i915 = FUNC8(dig_port->base.base.dev);
	enum tc_port_mode old_tc_mode = dig_port->tc_mode;

	FUNC5(i915);
	FUNC1(FUNC6(i915,
					       FUNC4(dig_port)));

	FUNC3(dig_port);
	FUNC2(dig_port, required_lanes);

	FUNC0("Port %s: TC port mode reset (%s -> %s)\n",
		      dig_port->tc_port_name,
		      FUNC7(old_tc_mode),
		      FUNC7(dig_port->tc_mode));
}