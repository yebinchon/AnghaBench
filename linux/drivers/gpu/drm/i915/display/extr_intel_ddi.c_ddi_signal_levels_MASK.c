#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct intel_encoder {int /*<<< orphan*/  type; TYPE_1__ base; } ;
struct intel_dp {int dummy; } ;
struct intel_digital_port {struct intel_encoder base; } ;
struct drm_i915_private {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct drm_i915_private*) ; 
 struct intel_digital_port* FUNC2 (struct intel_dp*) ; 
 int FUNC3 (struct intel_dp*) ; 
 int /*<<< orphan*/  FUNC4 (struct intel_encoder*,int,int /*<<< orphan*/ ) ; 
 struct drm_i915_private* FUNC5 (int /*<<< orphan*/ ) ; 

u32 FUNC6(struct intel_dp *intel_dp)
{
	struct intel_digital_port *dport = FUNC2(intel_dp);
	struct drm_i915_private *dev_priv = FUNC5(dport->base.base.dev);
	struct intel_encoder *encoder = &dport->base;
	int level = FUNC3(intel_dp);

	if (FUNC1(dev_priv))
		FUNC4(encoder, level, encoder->type);

	return FUNC0(level);
}