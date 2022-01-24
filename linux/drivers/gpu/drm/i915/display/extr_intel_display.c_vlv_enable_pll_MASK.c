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
struct TYPE_4__ {int dpll; int /*<<< orphan*/  dpll_md; } ;
struct intel_crtc_state {TYPE_2__ dpll_hw_state; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;
struct intel_crtc {int pipe; TYPE_1__ base; } ;
struct drm_i915_private {int dummy; } ;
typedef  enum pipe { ____Placeholder_pipe } pipe ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int DPLL_VCO_ENABLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct intel_crtc*,struct intel_crtc_state const*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_i915_private*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_i915_private*,int) ; 
 struct drm_i915_private* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct intel_crtc *crtc,
			   const struct intel_crtc_state *pipe_config)
{
	struct drm_i915_private *dev_priv = FUNC6(crtc->base.dev);
	enum pipe pipe = crtc->pipe;

	FUNC5(dev_priv, pipe);

	/* PLL is protected by panel, make sure we can write it */
	FUNC4(dev_priv, pipe);

	if (pipe_config->dpll_hw_state.dpll & DPLL_VCO_ENABLE)
		FUNC3(crtc, pipe_config);

	FUNC1(FUNC0(pipe), pipe_config->dpll_hw_state.dpll_md);
	FUNC2(FUNC0(pipe));
}