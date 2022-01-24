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
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct intel_encoder {int /*<<< orphan*/  power_domain; int /*<<< orphan*/  port; TYPE_1__ base; } ;
struct intel_dp {int /*<<< orphan*/  output_reg; } ;
struct drm_i915_private {int dummy; } ;
typedef  int /*<<< orphan*/  intel_wakeref_t ;
typedef  enum pipe { ____Placeholder_pipe } pipe ;

/* Variables and functions */
 struct intel_dp* FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_i915_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_i915_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct drm_i915_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 struct drm_i915_private* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC5(struct intel_encoder *encoder,
				  enum pipe *pipe)
{
	struct drm_i915_private *dev_priv = FUNC4(encoder->base.dev);
	struct intel_dp *intel_dp = FUNC0(&encoder->base);
	intel_wakeref_t wakeref;
	bool ret;

	wakeref = FUNC1(dev_priv,
						     encoder->power_domain);
	if (!wakeref)
		return false;

	ret = FUNC3(dev_priv, intel_dp->output_reg,
				    encoder->port, pipe);

	FUNC2(dev_priv, encoder->power_domain, wakeref);

	return ret;
}