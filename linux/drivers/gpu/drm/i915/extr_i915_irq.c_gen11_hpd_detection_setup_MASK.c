#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u32 ;
struct drm_i915_private {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GEN11_TBT_HOTPLUG_CTL ; 
 int /*<<< orphan*/  GEN11_TC_HOTPLUG_CTL ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  PORT_TC1 ; 
 int /*<<< orphan*/  PORT_TC2 ; 
 int /*<<< orphan*/  PORT_TC3 ; 
 int /*<<< orphan*/  PORT_TC4 ; 

__attribute__((used)) static void FUNC3(struct drm_i915_private *dev_priv)
{
	u32 hotplug;

	hotplug = FUNC1(GEN11_TC_HOTPLUG_CTL);
	hotplug |= FUNC0(PORT_TC1) |
		   FUNC0(PORT_TC2) |
		   FUNC0(PORT_TC3) |
		   FUNC0(PORT_TC4);
	FUNC2(GEN11_TC_HOTPLUG_CTL, hotplug);

	hotplug = FUNC1(GEN11_TBT_HOTPLUG_CTL);
	hotplug |= FUNC0(PORT_TC1) |
		   FUNC0(PORT_TC2) |
		   FUNC0(PORT_TC3) |
		   FUNC0(PORT_TC4);
	FUNC2(GEN11_TBT_HOTPLUG_CTL, hotplug);
}