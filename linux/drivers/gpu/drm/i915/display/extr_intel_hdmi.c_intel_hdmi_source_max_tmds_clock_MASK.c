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
struct intel_encoder {size_t port; TYPE_1__ base; } ;
struct TYPE_4__ {struct ddi_vbt_port_info* ddi_port_info; } ;
struct drm_i915_private {TYPE_2__ vbt; } ;
struct ddi_vbt_port_info {scalar_t__ max_tmds_clock; } ;

/* Variables and functions */
 int FUNC0 (struct drm_i915_private*) ; 
 scalar_t__ FUNC1 (struct drm_i915_private*) ; 
 scalar_t__ FUNC2 (struct drm_i915_private*) ; 
 int FUNC3 (int,scalar_t__) ; 
 struct drm_i915_private* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct intel_encoder *encoder)
{
	struct drm_i915_private *dev_priv = FUNC4(encoder->base.dev);
	const struct ddi_vbt_port_info *info =
		&dev_priv->vbt.ddi_port_info[encoder->port];
	int max_tmds_clock;

	if (FUNC0(dev_priv) >= 10 || FUNC1(dev_priv))
		max_tmds_clock = 594000;
	else if (FUNC0(dev_priv) >= 8 || FUNC2(dev_priv))
		max_tmds_clock = 300000;
	else if (FUNC0(dev_priv) >= 5)
		max_tmds_clock = 225000;
	else
		max_tmds_clock = 165000;

	if (info->max_tmds_clock)
		max_tmds_clock = FUNC3(max_tmds_clock, info->max_tmds_clock);

	return max_tmds_clock;
}