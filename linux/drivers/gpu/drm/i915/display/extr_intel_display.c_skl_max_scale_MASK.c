#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_8__ {int crtc_clock; } ;
struct TYPE_11__ {int /*<<< orphan*/  state; TYPE_2__ adjusted_mode; int /*<<< orphan*/  enable; int /*<<< orphan*/  crtc; } ;
struct intel_crtc_state {TYPE_5__ base; } ;
struct TYPE_7__ {int /*<<< orphan*/  dev; } ;
struct intel_crtc {TYPE_1__ base; } ;
struct drm_i915_private {int dummy; } ;
struct TYPE_9__ {int cdclk; } ;
struct TYPE_10__ {TYPE_3__ logical; } ;
struct TYPE_12__ {TYPE_4__ cdclk; } ;

/* Variables and functions */
 int DRM_PLANE_HELPER_NO_SCALING ; 
 int FUNC0 (struct drm_i915_private*) ; 
 scalar_t__ FUNC1 (struct drm_i915_private*) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int,int) ; 
 struct drm_i915_private* FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_6__* FUNC6 (int /*<<< orphan*/ ) ; 
 struct intel_crtc* FUNC7 (int /*<<< orphan*/ ) ; 

int
FUNC8(const struct intel_crtc_state *crtc_state,
	      u32 pixel_format)
{
	struct intel_crtc *crtc = FUNC7(crtc_state->base.crtc);
	struct drm_i915_private *dev_priv = FUNC5(crtc->base.dev);
	int max_scale, mult;
	int crtc_clock, max_dotclk, tmpclk1, tmpclk2;

	if (!crtc_state->base.enable)
		return DRM_PLANE_HELPER_NO_SCALING;

	crtc_clock = crtc_state->base.adjusted_mode.crtc_clock;
	max_dotclk = FUNC6(crtc_state->base.state)->cdclk.logical.cdclk;

	if (FUNC1(dev_priv) || FUNC0(dev_priv) >= 10)
		max_dotclk *= 2;

	if (FUNC2(!crtc_clock || max_dotclk < crtc_clock))
		return DRM_PLANE_HELPER_NO_SCALING;

	/*
	 * skl max scale is lower of:
	 *    close to 3 but not 3, -1 is for that purpose
	 *            or
	 *    cdclk/crtc_clock
	 */
	mult = FUNC3(pixel_format) ? 2 : 3;
	tmpclk1 = (1 << 16) * mult - 1;
	tmpclk2 = (1 << 8) * ((max_dotclk << 8) / crtc_clock);
	max_scale = FUNC4(tmpclk1, tmpclk2);

	return max_scale;
}