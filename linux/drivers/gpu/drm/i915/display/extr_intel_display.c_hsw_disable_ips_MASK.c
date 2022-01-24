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
struct intel_crtc_state {int /*<<< orphan*/  ips_enabled; TYPE_1__ base; } ;
struct TYPE_4__ {struct drm_device* dev; } ;
struct intel_crtc {int /*<<< orphan*/  pipe; TYPE_2__ base; } ;
struct drm_i915_private {int dummy; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DISPLAY_IPS_CONTROL ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IPS_CTL ; 
 int /*<<< orphan*/  IPS_ENABLE ; 
 scalar_t__ FUNC2 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct drm_i915_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_i915_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_i915_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct drm_i915_private* FUNC8 (struct drm_device*) ; 
 struct intel_crtc* FUNC9 (int /*<<< orphan*/ ) ; 

void FUNC10(const struct intel_crtc_state *crtc_state)
{
	struct intel_crtc *crtc = FUNC9(crtc_state->base.crtc);
	struct drm_device *dev = crtc->base.dev;
	struct drm_i915_private *dev_priv = FUNC8(dev);

	if (!crtc_state->ips_enabled)
		return;

	if (FUNC2(dev_priv)) {
		FUNC4(FUNC7(dev_priv, DISPLAY_IPS_CONTROL, 0));
		/*
		 * Wait for PCODE to finish disabling IPS. The BSpec specified
		 * 42ms timeout value leads to occasional timeouts so use 100ms
		 * instead.
		 */
		if (FUNC5(dev_priv, IPS_CTL, IPS_ENABLE, 100))
			FUNC0("Timed out waiting for IPS disable\n");
	} else {
		FUNC1(IPS_CTL, 0);
		FUNC3(IPS_CTL);
	}

	/* We need to wait for a vblank before we can disable the plane. */
	FUNC6(dev_priv, crtc->pipe);
}