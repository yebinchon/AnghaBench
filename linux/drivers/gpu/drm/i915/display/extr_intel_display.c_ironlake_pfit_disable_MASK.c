#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ enabled; } ;
struct TYPE_4__ {int /*<<< orphan*/  crtc; } ;
struct intel_crtc_state {TYPE_3__ pch_pfit; TYPE_1__ base; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;
struct intel_crtc {int pipe; TYPE_2__ base; } ;
struct drm_i915_private {int dummy; } ;
typedef  enum pipe { ____Placeholder_pipe } pipe ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 struct drm_i915_private* FUNC4 (int /*<<< orphan*/ ) ; 
 struct intel_crtc* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(const struct intel_crtc_state *old_crtc_state)
{
	struct intel_crtc *crtc = FUNC5(old_crtc_state->base.crtc);
	struct drm_i915_private *dev_priv = FUNC4(crtc->base.dev);
	enum pipe pipe = crtc->pipe;

	/* To avoid upsetting the power well on haswell only disable the pfit if
	 * it's in use. The hw state code will make sure we get this right. */
	if (old_crtc_state->pch_pfit.enabled) {
		FUNC0(FUNC1(pipe), 0);
		FUNC0(FUNC2(pipe), 0);
		FUNC0(FUNC3(pipe), 0);
	}
}