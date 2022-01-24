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
typedef  int u32 ;
struct TYPE_3__ {int /*<<< orphan*/  crtc; } ;
struct intel_crtc_state {int cpu_transcoder; scalar_t__ has_pch_encoder; TYPE_1__ base; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct intel_crtc {int pipe; TYPE_2__ base; } ;
struct drm_i915_private {int dummy; } ;
typedef  int /*<<< orphan*/  i915_reg_t ;
typedef  enum transcoder { ____Placeholder_transcoder } transcoder ;
typedef  enum pipe { ____Placeholder_pipe } pipe ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct drm_i915_private*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  INTEL_OUTPUT_DSI ; 
 int /*<<< orphan*/  FUNC4 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int PIPECONF_ENABLE ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC9 (struct drm_i915_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct drm_i915_private*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct intel_crtc*) ; 
 int /*<<< orphan*/  FUNC12 (struct drm_i915_private*,int) ; 
 scalar_t__ FUNC13 (struct intel_crtc_state const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (struct intel_crtc_state const*) ; 
 int /*<<< orphan*/  FUNC15 (struct intel_crtc*) ; 
 int /*<<< orphan*/  FUNC16 (struct intel_crtc*) ; 
 int /*<<< orphan*/  FUNC17 (int) ; 
 struct drm_i915_private* FUNC18 (int /*<<< orphan*/ ) ; 
 struct intel_crtc* FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct intel_crtc*) ; 

__attribute__((used)) static void FUNC21(const struct intel_crtc_state *new_crtc_state)
{
	struct intel_crtc *crtc = FUNC19(new_crtc_state->base.crtc);
	struct drm_i915_private *dev_priv = FUNC18(crtc->base.dev);
	enum transcoder cpu_transcoder = new_crtc_state->cpu_transcoder;
	enum pipe pipe = crtc->pipe;
	i915_reg_t reg;
	u32 val;

	FUNC0("enabling pipe %c\n", FUNC17(pipe));

	FUNC11(crtc);

	/*
	 * A pipe without a PLL won't actually be able to drive bits from
	 * a plane.  On ILK+ the pipe PLLs are integrated, so we don't
	 * need the check.
	 */
	if (FUNC1(dev_priv)) {
		if (FUNC13(new_crtc_state, INTEL_OUTPUT_DSI))
			FUNC8(dev_priv);
		else
			FUNC12(dev_priv, pipe);
	} else {
		if (new_crtc_state->has_pch_encoder) {
			/* if driving the PCH, we need FDI enabled */
			FUNC9(dev_priv,
						  FUNC15(crtc));
			FUNC10(dev_priv,
						  (enum pipe) cpu_transcoder);
		}
		/* FIXME: assert CPU port conditions for SNB+ */
	}

	FUNC20(crtc);

	reg = FUNC5(cpu_transcoder);
	val = FUNC2(reg);
	if (val & PIPECONF_ENABLE) {
		/* we keep both pipes enabled on 830 */
		FUNC7(!FUNC4(dev_priv));
		return;
	}

	FUNC3(reg, val | PIPECONF_ENABLE);
	FUNC6(reg);

	/*
	 * Until the pipe starts PIPEDSL reads will return a stale value,
	 * which causes an apparent vblank timestamp jump when PIPEDSL
	 * resets to its proper value. That also messes up the frame count
	 * when it's derived from the timestamps. So let's wait for the
	 * pipe to start properly before we call drm_crtc_vblank_on()
	 */
	if (FUNC14(new_crtc_state) == 0)
		FUNC16(crtc);
}