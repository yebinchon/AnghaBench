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
struct intel_encoder {int /*<<< orphan*/  port; } ;
struct intel_crtc {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct intel_atomic_state {TYPE_1__ base; } ;
struct drm_i915_private {int dummy; } ;
typedef  enum phy { ____Placeholder_phy } phy ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct intel_atomic_state*,struct intel_crtc*,struct intel_encoder*) ; 
 int FUNC2 (struct intel_atomic_state*,struct intel_crtc*,struct intel_encoder*) ; 
 scalar_t__ FUNC3 (struct drm_i915_private*,int) ; 
 scalar_t__ FUNC4 (struct drm_i915_private*,int) ; 
 int FUNC5 (struct drm_i915_private*,int /*<<< orphan*/ ) ; 
 struct drm_i915_private* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC7(struct intel_atomic_state *state,
			  struct intel_crtc *crtc,
			  struct intel_encoder *encoder)
{
	struct drm_i915_private *dev_priv = FUNC6(state->base.dev);
	enum phy phy = FUNC5(dev_priv, encoder->port);

	if (FUNC3(dev_priv, phy))
		return FUNC1(state, crtc, encoder);
	else if (FUNC4(dev_priv, phy))
		return FUNC2(state, crtc, encoder);

	FUNC0(phy);

	return false;
}