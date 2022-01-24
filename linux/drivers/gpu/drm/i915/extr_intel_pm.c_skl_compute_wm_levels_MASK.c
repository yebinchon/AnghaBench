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
struct skl_wm_params {int dummy; } ;
struct skl_wm_level {int dummy; } ;
struct TYPE_4__ {TYPE_1__* crtc; } ;
struct intel_crtc_state {TYPE_2__ base; } ;
struct drm_i915_private {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC1 (struct intel_crtc_state const*,int,struct skl_wm_params const*,struct skl_wm_level*,struct skl_wm_level*) ; 
 struct drm_i915_private* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(const struct intel_crtc_state *crtc_state,
		      const struct skl_wm_params *wm_params,
		      struct skl_wm_level *levels)
{
	struct drm_i915_private *dev_priv = FUNC2(crtc_state->base.crtc->dev);
	int level, max_level = FUNC0(dev_priv);
	struct skl_wm_level *result_prev = &levels[0];

	for (level = 0; level <= max_level; level++) {
		struct skl_wm_level *result = &levels[level];

		FUNC1(crtc_state, level, wm_params,
				     result_prev, result);

		result_prev = result;
	}
}