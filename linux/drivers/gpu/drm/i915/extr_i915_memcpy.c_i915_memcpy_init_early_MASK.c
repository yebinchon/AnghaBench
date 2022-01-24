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
struct drm_i915_private {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  X86_FEATURE_HYPERVISOR ; 
 int /*<<< orphan*/  X86_FEATURE_XMM4_1 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  has_movntdqa ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(struct drm_i915_private *dev_priv)
{
	/*
	 * Some hypervisors (e.g. KVM) don't support VEX-prefix instructions
	 * emulation. So don't enable movntdqa in hypervisor guest.
	 */
	if (FUNC2(X86_FEATURE_XMM4_1) &&
	    !FUNC0(X86_FEATURE_HYPERVISOR))
		FUNC1(&has_movntdqa);
}