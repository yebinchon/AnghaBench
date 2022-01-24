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
 int DREF_NONSPREAD_SOURCE_MASK ; 
 int DREF_SSC_SOURCE_MASK ; 
 int DREF_SUPERSPREAD_SOURCE_MASK ; 
 scalar_t__ FUNC0 (struct drm_i915_private*) ; 
 scalar_t__ FUNC1 (struct drm_i915_private*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  PCH_DREF_CONTROL ; 

__attribute__((used)) static void FUNC5(struct drm_i915_private *dev_priv)
{
	u32 val;
	bool enabled;

	FUNC4(!(FUNC1(dev_priv) || FUNC0(dev_priv)));

	val = FUNC2(PCH_DREF_CONTROL);
	enabled = !!(val & (DREF_SSC_SOURCE_MASK | DREF_NONSPREAD_SOURCE_MASK |
			    DREF_SUPERSPREAD_SOURCE_MASK));
	FUNC3(!enabled, "PCH refclk assertion failure, should be active but is disabled\n");
}