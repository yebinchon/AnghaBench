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
struct intel_encoder {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  state; } ;
struct intel_crtc_state {TYPE_2__ base; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;
struct intel_crtc {int /*<<< orphan*/  pipe; TYPE_1__ base; } ;
struct intel_atomic_state {int dummy; } ;
struct drm_i915_private {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int FUNC1 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  INTEL_OUTPUT_DSI ; 
 int /*<<< orphan*/  FUNC2 (struct intel_crtc_state*,int /*<<< orphan*/ ) ; 
 struct intel_encoder* FUNC3 (struct intel_atomic_state*,struct intel_crtc_state*) ; 
 int /*<<< orphan*/  FUNC4 (struct intel_atomic_state*,struct intel_crtc*,struct intel_encoder*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct drm_i915_private* FUNC6 (int /*<<< orphan*/ ) ; 
 struct intel_atomic_state* FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct intel_crtc *crtc,
				      struct intel_crtc_state *crtc_state)
{
	struct drm_i915_private *dev_priv = FUNC6(crtc->base.dev);
	struct intel_atomic_state *state =
		FUNC7(crtc_state->base.state);

	if (!FUNC2(crtc_state, INTEL_OUTPUT_DSI) ||
	    FUNC1(dev_priv) >= 11) {
		struct intel_encoder *encoder =
			FUNC3(state, crtc_state);

		if (!FUNC4(state, crtc, encoder)) {
			FUNC0("failed to find PLL for pipe %c\n",
				      FUNC5(crtc->pipe));
			return -EINVAL;
		}
	}

	return 0;
}