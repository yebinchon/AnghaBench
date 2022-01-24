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
struct TYPE_2__ {struct drm_crtc* crtc; } ;
struct intel_crtc_state {int cpu_transcoder; TYPE_1__ base; } ;
struct intel_crtc {int dummy; } ;
struct intel_atomic_state {int dummy; } ;
struct drm_i915_private {int dummy; } ;
struct drm_crtc {int /*<<< orphan*/  dev; } ;
typedef  enum transcoder { ____Placeholder_transcoder } transcoder ;

/* Variables and functions */
 int FUNC0 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  INTEL_OUTPUT_DP_MST ; 
 int /*<<< orphan*/  FUNC1 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_crtc*) ; 
 scalar_t__ FUNC3 (struct intel_crtc_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct intel_crtc_state*) ; 
 int /*<<< orphan*/  FUNC5 (struct intel_crtc_state*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct intel_crtc_state*) ; 
 int /*<<< orphan*/  FUNC7 (struct intel_crtc_state*) ; 
 int /*<<< orphan*/  FUNC8 (struct intel_crtc*,struct intel_crtc_state*,struct intel_atomic_state*) ; 
 int /*<<< orphan*/  FUNC9 (struct intel_crtc*,struct intel_crtc_state*,struct intel_atomic_state*) ; 
 int /*<<< orphan*/  FUNC10 (struct intel_crtc*,struct intel_crtc_state*,struct intel_atomic_state*) ; 
 int /*<<< orphan*/  FUNC11 (struct intel_crtc_state*) ; 
 int /*<<< orphan*/  FUNC12 (struct intel_crtc*) ; 
 struct drm_i915_private* FUNC13 (int /*<<< orphan*/ ) ; 
 struct intel_crtc* FUNC14 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC15 (int) ; 

__attribute__((used)) static void FUNC16(struct intel_crtc_state *old_crtc_state,
				 struct intel_atomic_state *state)
{
	struct drm_crtc *crtc = old_crtc_state->base.crtc;
	struct drm_i915_private *dev_priv = FUNC13(crtc->dev);
	struct intel_crtc *intel_crtc = FUNC14(crtc);
	enum transcoder cpu_transcoder = old_crtc_state->cpu_transcoder;

	FUNC8(intel_crtc, old_crtc_state, state);

	FUNC2(crtc);
	FUNC1(crtc);

	/* XXX: Do the pipe assertions at the right place for BXT DSI. */
	if (!FUNC15(cpu_transcoder))
		FUNC6(old_crtc_state);

	if (FUNC3(old_crtc_state, INTEL_OUTPUT_DP_MST))
		FUNC5(old_crtc_state, false);

	if (!FUNC15(cpu_transcoder))
		FUNC4(old_crtc_state);

	FUNC7(old_crtc_state);

	if (FUNC0(dev_priv) >= 9)
		FUNC12(intel_crtc);
	else
		FUNC11(old_crtc_state);

	FUNC9(intel_crtc, old_crtc_state, state);

	FUNC10(intel_crtc, old_crtc_state, state);
}