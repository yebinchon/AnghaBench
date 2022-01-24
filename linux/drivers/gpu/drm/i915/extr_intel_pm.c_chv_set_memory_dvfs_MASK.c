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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FORCE_DDR_FREQ_REQ_ACK ; 
 int FORCE_DDR_HIGH_FREQ ; 
 int FORCE_DDR_LOW_FREQ ; 
 int /*<<< orphan*/  PUNIT_REG_DDR_SETUP2 ; 
 int /*<<< orphan*/  FUNC1 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_i915_private*) ; 
 int FUNC3 (struct drm_i915_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_i915_private*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (int,int) ; 

__attribute__((used)) static void FUNC6(struct drm_i915_private *dev_priv, bool enable)
{
	u32 val;

	FUNC1(dev_priv);

	val = FUNC3(dev_priv, PUNIT_REG_DDR_SETUP2);
	if (enable)
		val &= ~FORCE_DDR_HIGH_FREQ;
	else
		val |= FORCE_DDR_HIGH_FREQ;
	val &= ~FORCE_DDR_LOW_FREQ;
	val |= FORCE_DDR_FREQ_REQ_ACK;
	FUNC4(dev_priv, PUNIT_REG_DDR_SETUP2, val);

	if (FUNC5((FUNC3(dev_priv, PUNIT_REG_DDR_SETUP2) &
		      FORCE_DDR_FREQ_REQ_ACK) == 0, 3))
		FUNC0("timed out waiting for Punit DDR DVFS request\n");

	FUNC2(dev_priv);
}