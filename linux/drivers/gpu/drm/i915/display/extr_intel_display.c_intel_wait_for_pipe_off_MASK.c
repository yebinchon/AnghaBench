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
struct intel_crtc_state {int cpu_transcoder; TYPE_1__ base; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct intel_crtc {TYPE_2__ base; } ;
struct drm_i915_private {int dummy; } ;
typedef  int /*<<< orphan*/  i915_reg_t ;
typedef  enum transcoder { ____Placeholder_transcoder } transcoder ;

/* Variables and functions */
 int /*<<< orphan*/  I965_PIPECONF_ACTIVE ; 
 int FUNC0 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 scalar_t__ FUNC3 (struct drm_i915_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct intel_crtc*) ; 
 struct drm_i915_private* FUNC5 (int /*<<< orphan*/ ) ; 
 struct intel_crtc* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(const struct intel_crtc_state *old_crtc_state)
{
	struct intel_crtc *crtc = FUNC6(old_crtc_state->base.crtc);
	struct drm_i915_private *dev_priv = FUNC5(crtc->base.dev);

	if (FUNC0(dev_priv) >= 4) {
		enum transcoder cpu_transcoder = old_crtc_state->cpu_transcoder;
		i915_reg_t reg = FUNC1(cpu_transcoder);

		/* Wait for the Pipe State to go off */
		if (FUNC3(dev_priv, reg,
					    I965_PIPECONF_ACTIVE, 100))
			FUNC2(1, "pipe_off wait timed out\n");
	} else {
		FUNC4(crtc);
	}
}