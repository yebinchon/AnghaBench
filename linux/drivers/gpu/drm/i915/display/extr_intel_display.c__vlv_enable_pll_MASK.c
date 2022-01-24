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
struct TYPE_4__ {int /*<<< orphan*/  dpll; } ;
struct intel_crtc_state {TYPE_2__ dpll_hw_state; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;
struct intel_crtc {int pipe; TYPE_1__ base; } ;
struct drm_i915_private {int dummy; } ;
typedef  enum pipe { ____Placeholder_pipe } pipe ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DPLL_LOCK_VLV ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct drm_i915_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct drm_i915_private* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static void FUNC7(struct intel_crtc *crtc,
			    const struct intel_crtc_state *pipe_config)
{
	struct drm_i915_private *dev_priv = FUNC5(crtc->base.dev);
	enum pipe pipe = crtc->pipe;

	FUNC2(FUNC0(pipe), pipe_config->dpll_hw_state.dpll);
	FUNC3(FUNC0(pipe));
	FUNC6(150);

	if (FUNC4(dev_priv, FUNC0(pipe), DPLL_LOCK_VLV, 1))
		FUNC1("DPLL %d failed to lock\n", pipe);
}