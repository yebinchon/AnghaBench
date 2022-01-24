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
typedef  int /*<<< orphan*/  uint_fixed_16_16_t ;
typedef  int u32 ;
struct TYPE_2__ {struct drm_atomic_state* state; } ;
struct intel_crtc_state {TYPE_1__ base; } ;
struct drm_i915_private {scalar_t__ ipc_enabled; } ;
struct drm_atomic_state {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct drm_i915_private*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct intel_crtc_state const*) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 struct drm_i915_private* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static u32
FUNC5(const struct intel_crtc_state *crtc_state)
{
	struct drm_atomic_state *state = crtc_state->base.state;
	struct drm_i915_private *dev_priv = FUNC4(state->dev);
	uint_fixed_16_16_t linetime_us;
	u32 linetime_wm;

	linetime_us = FUNC2(crtc_state);
	linetime_wm = FUNC1(FUNC3(8, linetime_us));

	/* Display WA #1135: BXT:ALL GLK:ALL */
	if (FUNC0(dev_priv) && dev_priv->ipc_enabled)
		linetime_wm /= 2;

	return linetime_wm;
}