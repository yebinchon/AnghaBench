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
typedef  int /*<<< orphan*/  u32 ;
struct drm_i915_private {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DSP_MAXFIFO_PM5_ENABLE ; 
 int /*<<< orphan*/  PUNIT_REG_DSPSSPM ; 
 int /*<<< orphan*/  FUNC0 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_i915_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_i915_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct drm_i915_private *dev_priv, bool enable)
{
	u32 val;

	FUNC0(dev_priv);

	val = FUNC2(dev_priv, PUNIT_REG_DSPSSPM);
	if (enable)
		val |= DSP_MAXFIFO_PM5_ENABLE;
	else
		val &= ~DSP_MAXFIFO_PM5_ENABLE;
	FUNC3(dev_priv, PUNIT_REG_DSPSSPM, val);

	FUNC1(dev_priv);
}