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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_3__ {int /*<<< orphan*/  crtc; } ;
struct intel_crtc_state {int /*<<< orphan*/  gamma_mode; scalar_t__ csc_enable; scalar_t__ gamma_enable; TYPE_1__ base; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct intel_crtc {int pipe; TYPE_2__ base; } ;
struct drm_i915_private {int dummy; } ;
typedef  enum pipe { ____Placeholder_pipe } pipe ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  SKL_BOTTOM_COLOR_CSC_ENABLE ; 
 int /*<<< orphan*/  SKL_BOTTOM_COLOR_GAMMA_ENABLE ; 
 int /*<<< orphan*/  FUNC4 (struct intel_crtc_state const*) ; 
 int /*<<< orphan*/  FUNC5 (struct intel_crtc_state const*) ; 
 struct drm_i915_private* FUNC6 (int /*<<< orphan*/ ) ; 
 struct intel_crtc* FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(const struct intel_crtc_state *crtc_state)
{
	struct intel_crtc *crtc = FUNC7(crtc_state->base.crtc);
	struct drm_i915_private *dev_priv = FUNC6(crtc->base.dev);
	enum pipe pipe = crtc->pipe;
	u32 val = 0;

	/*
	 * We don't (yet) allow userspace to control the pipe background color,
	 * so force it to black, but apply pipe gamma and CSC appropriately
	 * so that its handling will match how we program our planes.
	 */
	if (crtc_state->gamma_enable)
		val |= SKL_BOTTOM_COLOR_GAMMA_ENABLE;
	if (crtc_state->csc_enable)
		val |= SKL_BOTTOM_COLOR_CSC_ENABLE;
	FUNC1(FUNC3(pipe), val);

	FUNC1(FUNC0(crtc->pipe), crtc_state->gamma_mode);

	if (FUNC2(dev_priv) >= 11)
		FUNC4(crtc_state);
	else
		FUNC5(crtc_state);
}