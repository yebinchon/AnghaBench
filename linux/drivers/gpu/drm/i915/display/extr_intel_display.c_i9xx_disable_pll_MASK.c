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
struct TYPE_3__ {int /*<<< orphan*/  crtc; } ;
struct intel_crtc_state {TYPE_1__ base; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct intel_crtc {int pipe; TYPE_2__ base; } ;
struct drm_i915_private {int dummy; } ;
typedef  enum pipe { ____Placeholder_pipe } pipe ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DPLL_VGA_MODE_DIS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_i915_private*,int) ; 
 struct drm_i915_private* FUNC5 (int /*<<< orphan*/ ) ; 
 struct intel_crtc* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(const struct intel_crtc_state *crtc_state)
{
	struct intel_crtc *crtc = FUNC6(crtc_state->base.crtc);
	struct drm_i915_private *dev_priv = FUNC5(crtc->base.dev);
	enum pipe pipe = crtc->pipe;

	/* Don't disable pipe or pipe PLLs if needed */
	if (FUNC2(dev_priv))
		return;

	/* Make sure the pipe isn't still relying on us */
	FUNC4(dev_priv, pipe);

	FUNC1(FUNC0(pipe), DPLL_VGA_MODE_DIS);
	FUNC3(FUNC0(pipe));
}