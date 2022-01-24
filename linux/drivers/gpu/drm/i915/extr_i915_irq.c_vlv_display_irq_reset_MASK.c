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
struct intel_uncore {int dummy; } ;
struct drm_i915_private {unsigned int irq_mask; struct intel_uncore uncore; } ;

/* Variables and functions */
 int /*<<< orphan*/  DPINVGTT ; 
 int /*<<< orphan*/  DPINVGTT_STATUS_MASK ; 
 int /*<<< orphan*/  DPINVGTT_STATUS_MASK_CHV ; 
 int /*<<< orphan*/  FUNC0 (struct intel_uncore*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  PORT_HOTPLUG_STAT ; 
 int /*<<< orphan*/  VLV_ ; 
 int /*<<< orphan*/  FUNC3 (struct drm_i915_private*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC5 (struct intel_uncore*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct drm_i915_private *dev_priv)
{
	struct intel_uncore *uncore = &dev_priv->uncore;

	if (FUNC2(dev_priv))
		FUNC5(uncore, DPINVGTT, DPINVGTT_STATUS_MASK_CHV);
	else
		FUNC5(uncore, DPINVGTT, DPINVGTT_STATUS_MASK);

	FUNC3(dev_priv, 0xffffffff, 0);
	FUNC5(uncore, PORT_HOTPLUG_STAT, FUNC1(PORT_HOTPLUG_STAT));

	FUNC4(dev_priv);

	FUNC0(uncore, VLV_);
	dev_priv->irq_mask = ~0u;
}