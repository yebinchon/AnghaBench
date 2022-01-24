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
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_4__ {scalar_t__ ctm; int /*<<< orphan*/  crtc; } ;
struct intel_crtc_state {scalar_t__ output_format; int /*<<< orphan*/  csc_mode; scalar_t__ csc_enable; TYPE_2__ base; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;
struct intel_crtc {int /*<<< orphan*/  pipe; TYPE_1__ base; } ;
struct drm_i915_private {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ INTEL_OUTPUT_FORMAT_RGB ; 
 int /*<<< orphan*/  FUNC1 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/ * ilk_csc_coeff_identity ; 
 int /*<<< orphan*/ * ilk_csc_coeff_limited_range ; 
 int /*<<< orphan*/ * ilk_csc_coeff_rgb_to_ycbcr ; 
 int /*<<< orphan*/  FUNC5 (struct intel_crtc_state const*,int /*<<< orphan*/ *) ; 
 int FUNC6 (struct intel_crtc_state const*) ; 
 int /*<<< orphan*/  ilk_csc_off_zero ; 
 int /*<<< orphan*/  ilk_csc_postoff_limited_range ; 
 int /*<<< orphan*/  ilk_csc_postoff_rgb_to_ycbcr ; 
 int /*<<< orphan*/  FUNC7 (struct intel_crtc*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct drm_i915_private* FUNC8 (int /*<<< orphan*/ ) ; 
 struct intel_crtc* FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(const struct intel_crtc_state *crtc_state)
{
	struct intel_crtc *crtc = FUNC9(crtc_state->base.crtc);
	struct drm_i915_private *dev_priv = FUNC8(crtc->base.dev);
	bool limited_color_range = FUNC6(crtc_state);

	if (crtc_state->base.ctm) {
		u16 coeff[9];

		FUNC5(crtc_state, coeff);
		FUNC7(crtc, ilk_csc_off_zero, coeff,
				    limited_color_range ?
				    ilk_csc_postoff_limited_range :
				    ilk_csc_off_zero);
	} else if (crtc_state->output_format != INTEL_OUTPUT_FORMAT_RGB) {
		FUNC7(crtc, ilk_csc_off_zero,
				    ilk_csc_coeff_rgb_to_ycbcr,
				    ilk_csc_postoff_rgb_to_ycbcr);
	} else if (limited_color_range) {
		FUNC7(crtc, ilk_csc_off_zero,
				    ilk_csc_coeff_limited_range,
				    ilk_csc_postoff_limited_range);
	} else if (crtc_state->csc_enable) {
		/*
		 * On GLK+ both pipe CSC and degamma LUT are controlled
		 * by csc_enable. Hence for the cases where the degama
		 * LUT is needed but CSC is not we need to load an
		 * identity matrix.
		 */
		FUNC4(!FUNC1(dev_priv) && !FUNC2(dev_priv));

		FUNC7(crtc, ilk_csc_off_zero,
				    ilk_csc_coeff_identity,
				    ilk_csc_off_zero);
	}

	FUNC0(FUNC3(crtc->pipe), crtc_state->csc_mode);
}