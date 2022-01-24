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
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct intel_encoder {int /*<<< orphan*/  port; TYPE_2__ base; } ;
struct intel_dp {scalar_t__ active_pipe; scalar_t__ pps_pipe; } ;
struct TYPE_3__ {int /*<<< orphan*/  crtc; } ;
struct intel_crtc_state {TYPE_1__ base; } ;
struct intel_crtc {scalar_t__ pipe; } ;
struct drm_i915_private {int /*<<< orphan*/  pps_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ INVALID_PIPE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct intel_dp* FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (struct intel_dp*) ; 
 int /*<<< orphan*/  FUNC4 (struct intel_dp*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct intel_dp*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 struct drm_i915_private* FUNC9 (int /*<<< orphan*/ ) ; 
 struct intel_crtc* FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct intel_dp*) ; 
 int /*<<< orphan*/  FUNC12 (struct drm_i915_private*,scalar_t__) ; 

__attribute__((used)) static void FUNC13(struct intel_encoder *encoder,
					   const struct intel_crtc_state *crtc_state)
{
	struct drm_i915_private *dev_priv = FUNC9(encoder->base.dev);
	struct intel_dp *intel_dp = FUNC2(&encoder->base);
	struct intel_crtc *crtc = FUNC10(crtc_state->base.crtc);

	FUNC6(&dev_priv->pps_mutex);

	FUNC1(intel_dp->active_pipe != INVALID_PIPE);

	if (intel_dp->pps_pipe != INVALID_PIPE &&
	    intel_dp->pps_pipe != crtc->pipe) {
		/*
		 * If another power sequencer was being used on this
		 * port previously make sure to turn off vdd there while
		 * we still have control of it.
		 */
		FUNC11(intel_dp);
	}

	/*
	 * We may be stealing the power
	 * sequencer from another port.
	 */
	FUNC12(dev_priv, crtc->pipe);

	intel_dp->active_pipe = crtc->pipe;

	if (!FUNC5(intel_dp))
		return;

	/* now it's all ours */
	intel_dp->pps_pipe = crtc->pipe;

	FUNC0("initializing pipe %c power sequencer for port %c\n",
		      FUNC7(intel_dp->pps_pipe), FUNC8(encoder->port));

	/* init power sequencer on this pipe and port */
	FUNC3(intel_dp);
	FUNC4(intel_dp, true);
}