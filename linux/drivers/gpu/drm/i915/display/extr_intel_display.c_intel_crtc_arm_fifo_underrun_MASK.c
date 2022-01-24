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
struct intel_crtc_state {scalar_t__ has_pch_encoder; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct intel_crtc {int /*<<< orphan*/  pipe; TYPE_1__ base; } ;
struct drm_i915_private {int dummy; } ;
typedef  enum pipe { ____Placeholder_pipe } pipe ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_i915_private*,int) ; 
 int FUNC1 (struct intel_crtc*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_i915_private*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_i915_private*,int,int) ; 
 struct drm_i915_private* FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5(struct intel_crtc *crtc,
				  struct intel_crtc_state *crtc_state)
{
	struct drm_i915_private *dev_priv = FUNC4(crtc->base.dev);

	if (!FUNC0(dev_priv, 2))
		FUNC2(dev_priv, crtc->pipe, true);

	if (crtc_state->has_pch_encoder) {
		enum pipe pch_transcoder =
			FUNC1(crtc);

		FUNC3(dev_priv, pch_transcoder, true);
	}
}