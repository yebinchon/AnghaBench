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
struct TYPE_3__ {struct drm_atomic_state* state; } ;
struct intel_crtc_state {int fdi_lanes; TYPE_1__ base; } ;
struct intel_crtc {int dummy; } ;
struct drm_i915_private {int dummy; } ;
struct drm_device {int dummy; } ;
struct drm_atomic_state {int dummy; } ;
typedef  enum pipe { ____Placeholder_pipe } pipe ;
struct TYPE_4__ {int num_pipes; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int EINVAL ; 
 TYPE_2__* FUNC2 (struct drm_i915_private*) ; 
 scalar_t__ FUNC3 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC4 (struct intel_crtc_state*) ; 
 scalar_t__ FUNC5 (struct drm_i915_private*) ; 
#define  PIPE_A 130 
#define  PIPE_B 129 
#define  PIPE_C 128 
 int FUNC6 (struct intel_crtc_state*) ; 
 struct intel_crtc_state* FUNC7 (struct drm_atomic_state*,struct intel_crtc*) ; 
 struct intel_crtc* FUNC8 (struct drm_i915_private*,int const) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int FUNC10 (struct intel_crtc_state*) ; 
 struct drm_i915_private* FUNC11 (struct drm_device*) ; 

__attribute__((used)) static int FUNC12(struct drm_device *dev, enum pipe pipe,
				     struct intel_crtc_state *pipe_config)
{
	struct drm_i915_private *dev_priv = FUNC11(dev);
	struct drm_atomic_state *state = pipe_config->base.state;
	struct intel_crtc *other_crtc;
	struct intel_crtc_state *other_crtc_state;

	FUNC1("checking fdi config on pipe %c, lanes %i\n",
		      FUNC9(pipe), pipe_config->fdi_lanes);
	if (pipe_config->fdi_lanes > 4) {
		FUNC1("invalid fdi lane config on pipe %c: %i lanes\n",
			      FUNC9(pipe), pipe_config->fdi_lanes);
		return -EINVAL;
	}

	if (FUNC5(dev_priv) || FUNC3(dev_priv)) {
		if (pipe_config->fdi_lanes > 2) {
			FUNC1("only 2 lanes on haswell, required: %i lanes\n",
				      pipe_config->fdi_lanes);
			return -EINVAL;
		} else {
			return 0;
		}
	}

	if (FUNC2(dev_priv)->num_pipes == 2)
		return 0;

	/* Ivybridge 3 pipe is really complicated */
	switch (pipe) {
	case PIPE_A:
		return 0;
	case PIPE_B:
		if (pipe_config->fdi_lanes <= 2)
			return 0;

		other_crtc = FUNC8(dev_priv, PIPE_C);
		other_crtc_state =
			FUNC7(state, other_crtc);
		if (FUNC4(other_crtc_state))
			return FUNC6(other_crtc_state);

		if (FUNC10(other_crtc_state) > 0) {
			FUNC1("invalid shared fdi lane config on pipe %c: %i lanes\n",
				      FUNC9(pipe), pipe_config->fdi_lanes);
			return -EINVAL;
		}
		return 0;
	case PIPE_C:
		if (pipe_config->fdi_lanes > 2) {
			FUNC1("only 2 lanes on pipe %c: required %i lanes\n",
				      FUNC9(pipe), pipe_config->fdi_lanes);
			return -EINVAL;
		}

		other_crtc = FUNC8(dev_priv, PIPE_B);
		other_crtc_state =
			FUNC7(state, other_crtc);
		if (FUNC4(other_crtc_state))
			return FUNC6(other_crtc_state);

		if (FUNC10(other_crtc_state) > 2) {
			FUNC1("fdi link B uses too many lanes to enable link C\n");
			return -EINVAL;
		}
		return 0;
	default:
		FUNC0();
	}
}