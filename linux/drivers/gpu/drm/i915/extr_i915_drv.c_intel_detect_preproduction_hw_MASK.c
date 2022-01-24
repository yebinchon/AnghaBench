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
 int /*<<< orphan*/  BXT_REVID_B_LAST ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (struct drm_i915_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct drm_i915_private*) ; 
 int FUNC3 (struct drm_i915_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct drm_i915_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KBL_REVID_A0 ; 
 int /*<<< orphan*/  LOCKDEP_STILL_OK ; 
 int /*<<< orphan*/  SKL_REVID_F0 ; 
 int /*<<< orphan*/  TAINT_MACHINE_CHECK ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct drm_i915_private *dev_priv)
{
	bool pre = false;

	pre |= FUNC2(dev_priv);
	pre |= FUNC4(dev_priv, 0, SKL_REVID_F0);
	pre |= FUNC1(dev_priv, 0, BXT_REVID_B_LAST);
	pre |= FUNC3(dev_priv, 0, KBL_REVID_A0);

	if (pre) {
		FUNC0("This is a pre-production stepping. "
			  "It may not be fully functional.\n");
		FUNC5(TAINT_MACHINE_CHECK, LOCKDEP_STILL_OK);
	}
}