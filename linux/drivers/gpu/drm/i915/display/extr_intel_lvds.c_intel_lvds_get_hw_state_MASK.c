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
struct intel_lvds_encoder {int /*<<< orphan*/  reg; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct intel_encoder {int /*<<< orphan*/  power_domain; TYPE_1__ base; } ;
struct drm_i915_private {int dummy; } ;
typedef  int /*<<< orphan*/  intel_wakeref_t ;
typedef  enum pipe { ____Placeholder_pipe } pipe ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_i915_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_i915_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct drm_i915_private*,int /*<<< orphan*/ ,int*) ; 
 struct drm_i915_private* FUNC3 (int /*<<< orphan*/ ) ; 
 struct intel_lvds_encoder* FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static bool FUNC5(struct intel_encoder *encoder,
				    enum pipe *pipe)
{
	struct drm_i915_private *dev_priv = FUNC3(encoder->base.dev);
	struct intel_lvds_encoder *lvds_encoder = FUNC4(&encoder->base);
	intel_wakeref_t wakeref;
	bool ret;

	wakeref = FUNC0(dev_priv,
						     encoder->power_domain);
	if (!wakeref)
		return false;

	ret = FUNC2(dev_priv, lvds_encoder->reg, pipe);

	FUNC1(dev_priv, encoder->power_domain, wakeref);

	return ret;
}