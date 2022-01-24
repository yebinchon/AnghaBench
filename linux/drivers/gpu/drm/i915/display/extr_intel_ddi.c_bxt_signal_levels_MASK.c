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
struct intel_dp {int /*<<< orphan*/  link_rate; } ;
struct intel_digital_port {struct intel_encoder base; } ;
struct drm_i915_private {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct drm_i915_private*) ; 
 scalar_t__ FUNC1 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC2 (struct intel_encoder*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct intel_encoder*,int,int /*<<< orphan*/ ) ; 
 struct intel_digital_port* FUNC4 (struct intel_dp*) ; 
 int /*<<< orphan*/  FUNC5 (struct intel_encoder*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct intel_dp*) ; 
 struct drm_i915_private* FUNC7 (int /*<<< orphan*/ ) ; 

u32 FUNC8(struct intel_dp *intel_dp)
{
	struct intel_digital_port *dport = FUNC4(intel_dp);
	struct drm_i915_private *dev_priv = FUNC7(dport->base.base.dev);
	struct intel_encoder *encoder = &dport->base;
	int level = FUNC6(intel_dp);

	if (FUNC0(dev_priv) >= 11)
		FUNC5(encoder, intel_dp->link_rate,
					level, encoder->type);
	else if (FUNC1(dev_priv))
		FUNC3(encoder, level, encoder->type);
	else
		FUNC2(encoder, level, encoder->type);

	return 0;
}