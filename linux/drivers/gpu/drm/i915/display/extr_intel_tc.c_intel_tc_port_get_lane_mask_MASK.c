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
typedef  int u32 ;
struct intel_uncore {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  port; TYPE_1__ base; } ;
struct intel_digital_port {int /*<<< orphan*/  tc_phy_fia; TYPE_2__ base; } ;
struct drm_i915_private {struct intel_uncore uncore; } ;
typedef  enum tc_port { ____Placeholder_tc_port } tc_port ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (struct drm_i915_private*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct intel_uncore*,int /*<<< orphan*/ ) ; 
 struct drm_i915_private* FUNC6 (int /*<<< orphan*/ ) ; 

u32 FUNC7(struct intel_digital_port *dig_port)
{
	struct drm_i915_private *i915 = FUNC6(dig_port->base.base.dev);
	enum tc_port tc_port = FUNC4(i915, dig_port->base.port);
	struct intel_uncore *uncore = &i915->uncore;
	u32 lane_mask;

	lane_mask = FUNC5(uncore,
				      FUNC2(dig_port->tc_phy_fia));

	FUNC3(lane_mask == 0xffffffff);

	return (lane_mask & FUNC0(tc_port)) >>
	       FUNC1(tc_port);
}