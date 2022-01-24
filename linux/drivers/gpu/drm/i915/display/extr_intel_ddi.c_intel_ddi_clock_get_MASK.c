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
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct intel_encoder {TYPE_1__ base; } ;
struct intel_crtc_state {int dummy; } ;
struct drm_i915_private {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct drm_i915_private*) ; 
 scalar_t__ FUNC1 (struct drm_i915_private*) ; 
 scalar_t__ FUNC2 (struct drm_i915_private*) ; 
 scalar_t__ FUNC3 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC4 (struct intel_encoder*,struct intel_crtc_state*) ; 
 int /*<<< orphan*/  FUNC5 (struct intel_encoder*,struct intel_crtc_state*) ; 
 int /*<<< orphan*/  FUNC6 (struct intel_encoder*,struct intel_crtc_state*) ; 
 int /*<<< orphan*/  FUNC7 (struct intel_encoder*,struct intel_crtc_state*) ; 
 int /*<<< orphan*/  FUNC8 (struct intel_encoder*,struct intel_crtc_state*) ; 
 struct drm_i915_private* FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(struct intel_encoder *encoder,
				struct intel_crtc_state *pipe_config)
{
	struct drm_i915_private *dev_priv = FUNC9(encoder->base.dev);

	if (FUNC0(dev_priv) >= 11)
		FUNC7(encoder, pipe_config);
	else if (FUNC1(dev_priv))
		FUNC5(encoder, pipe_config);
	else if (FUNC3(dev_priv))
		FUNC4(encoder, pipe_config);
	else if (FUNC2(dev_priv))
		FUNC8(encoder, pipe_config);
	else if (FUNC0(dev_priv) <= 8)
		FUNC6(encoder, pipe_config);
}