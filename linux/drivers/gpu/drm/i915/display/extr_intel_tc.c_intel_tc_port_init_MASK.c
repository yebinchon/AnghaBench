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
struct TYPE_4__ {int port; TYPE_1__ base; } ;
struct intel_digital_port {int tc_legacy_port; int /*<<< orphan*/  tc_phy_fia; scalar_t__ tc_link_refcount; int /*<<< orphan*/  tc_lock; int /*<<< orphan*/  tc_port_name; TYPE_2__ base; } ;
struct drm_i915_private {int dummy; } ;
typedef  enum tc_port { ____Placeholder_tc_port } tc_port ;
typedef  enum port { ____Placeholder_port } port ;

/* Variables and functions */
 int PORT_TC_NONE ; 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (struct drm_i915_private*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,char*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_i915_private*,int) ; 
 struct drm_i915_private* FUNC6 (int /*<<< orphan*/ ) ; 

void FUNC7(struct intel_digital_port *dig_port, bool is_legacy)
{
	struct drm_i915_private *i915 = FUNC6(dig_port->base.base.dev);
	enum port port = dig_port->base.port;
	enum tc_port tc_port = FUNC1(i915, port);

	if (FUNC0(tc_port == PORT_TC_NONE))
		return;

	FUNC4(dig_port->tc_port_name, sizeof(dig_port->tc_port_name),
		 "%c/TC#%d", FUNC3(port), tc_port + 1);

	FUNC2(&dig_port->tc_lock);
	dig_port->tc_legacy_port = is_legacy;
	dig_port->tc_link_refcount = 0;
	dig_port->tc_phy_fia = FUNC5(i915, tc_port);
}