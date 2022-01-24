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
struct dpll {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * crtc; } ;
struct intel_crtc_state {int pixel_multiplier; struct dpll dpll; TYPE_1__ base; } ;
struct intel_crtc {int /*<<< orphan*/  base; } ;
struct drm_i915_private {int dummy; } ;
typedef  enum pipe { ____Placeholder_pipe } pipe ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC1 (struct intel_crtc*,struct intel_crtc_state*) ; 
 int /*<<< orphan*/  FUNC2 (struct intel_crtc*,struct intel_crtc_state*) ; 
 int /*<<< orphan*/  FUNC3 (struct intel_crtc*,struct intel_crtc_state*) ; 
 struct intel_crtc* FUNC4 (struct drm_i915_private*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct intel_crtc_state*) ; 
 struct intel_crtc_state* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct intel_crtc*,struct intel_crtc_state*) ; 
 int /*<<< orphan*/  FUNC8 (struct intel_crtc*,struct intel_crtc_state*) ; 
 int /*<<< orphan*/  FUNC9 (struct intel_crtc*,struct intel_crtc_state*) ; 

int FUNC10(struct drm_i915_private *dev_priv, enum pipe pipe,
		     const struct dpll *dpll)
{
	struct intel_crtc *crtc = FUNC4(dev_priv, pipe);
	struct intel_crtc_state *pipe_config;

	pipe_config = FUNC6(sizeof(*pipe_config), GFP_KERNEL);
	if (!pipe_config)
		return -ENOMEM;

	pipe_config->base.crtc = &crtc->base;
	pipe_config->pixel_multiplier = 1;
	pipe_config->dpll = *dpll;

	if (FUNC0(dev_priv)) {
		FUNC1(crtc, pipe_config);
		FUNC3(crtc, pipe_config);
		FUNC2(crtc, pipe_config);
	} else {
		FUNC7(crtc, pipe_config);
		FUNC9(crtc, pipe_config);
		FUNC8(crtc, pipe_config);
	}

	FUNC5(pipe_config);

	return 0;
}