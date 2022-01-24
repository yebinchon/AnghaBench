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
struct intel_crtc_state {int cpu_transcoder; scalar_t__ double_wide; TYPE_1__ base; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct intel_crtc {int pipe; TYPE_2__ base; } ;
struct drm_i915_private {int dummy; } ;
typedef  int /*<<< orphan*/  i915_reg_t ;
typedef  enum transcoder { ____Placeholder_transcoder } transcoder ;
typedef  enum pipe { ____Placeholder_pipe } pipe ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int PIPECONF_DOUBLE_WIDE ; 
 int PIPECONF_ENABLE ; 
 int /*<<< orphan*/  FUNC5 (struct intel_crtc*) ; 
 int /*<<< orphan*/  FUNC6 (struct intel_crtc_state const*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 struct drm_i915_private* FUNC8 (int /*<<< orphan*/ ) ; 
 struct intel_crtc* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct intel_crtc*) ; 

__attribute__((used)) static void FUNC11(const struct intel_crtc_state *old_crtc_state)
{
	struct intel_crtc *crtc = FUNC9(old_crtc_state->base.crtc);
	struct drm_i915_private *dev_priv = FUNC8(crtc->base.dev);
	enum transcoder cpu_transcoder = old_crtc_state->cpu_transcoder;
	enum pipe pipe = crtc->pipe;
	i915_reg_t reg;
	u32 val;

	FUNC0("disabling pipe %c\n", FUNC7(pipe));

	/*
	 * Make sure planes won't keep trying to pump pixels to us,
	 * or we might hang the display.
	 */
	FUNC5(crtc);

	FUNC10(crtc);

	reg = FUNC4(cpu_transcoder);
	val = FUNC1(reg);
	if ((val & PIPECONF_ENABLE) == 0)
		return;

	/*
	 * Double wide has implications for planes
	 * so best keep it disabled when not needed.
	 */
	if (old_crtc_state->double_wide)
		val &= ~PIPECONF_DOUBLE_WIDE;

	/* Don't disable pipe or pipe PLLs if needed */
	if (!FUNC3(dev_priv))
		val &= ~PIPECONF_ENABLE;

	FUNC2(reg, val);
	if ((val & PIPECONF_ENABLE) == 0)
		FUNC6(old_crtc_state);
}