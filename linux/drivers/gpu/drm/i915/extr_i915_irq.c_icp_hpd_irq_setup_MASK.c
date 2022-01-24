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
 int /*<<< orphan*/  ICP_DDI_HPD_ENABLE_MASK ; 
 int /*<<< orphan*/  ICP_TC_HPD_ENABLE_MASK ; 
 int SDE_DDI_MASK_ICP ; 
 int SDE_TC_MASK_ICP ; 
 int /*<<< orphan*/  hpd_icp ; 
 int /*<<< orphan*/  FUNC0 (struct drm_i915_private*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_i915_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct drm_i915_private*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct drm_i915_private *dev_priv)
{
	u32 hotplug_irqs, enabled_irqs;

	hotplug_irqs = SDE_DDI_MASK_ICP | SDE_TC_MASK_ICP;
	enabled_irqs = FUNC2(dev_priv, hpd_icp);

	FUNC0(dev_priv, hotplug_irqs, enabled_irqs);

	FUNC1(dev_priv, ICP_DDI_HPD_ENABLE_MASK,
				ICP_TC_HPD_ENABLE_MASK);
}