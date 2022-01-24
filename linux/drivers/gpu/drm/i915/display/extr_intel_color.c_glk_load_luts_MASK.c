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
struct TYPE_2__ {scalar_t__ degamma_lut; int /*<<< orphan*/  crtc; struct drm_property_blob* gamma_lut; } ;
struct intel_crtc_state {scalar_t__ gamma_mode; TYPE_1__ base; } ;
struct intel_crtc {int dummy; } ;
struct drm_property_blob {int dummy; } ;

/* Variables and functions */
 scalar_t__ GAMMA_MODE_MODE_8BIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct intel_crtc*,struct drm_property_blob const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct intel_crtc_state const*) ; 
 int /*<<< orphan*/  FUNC3 (struct intel_crtc_state const*) ; 
 int /*<<< orphan*/  FUNC4 (struct intel_crtc_state const*) ; 
 int /*<<< orphan*/  FUNC5 (struct intel_crtc*) ; 
 struct intel_crtc* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(const struct intel_crtc_state *crtc_state)
{
	const struct drm_property_blob *gamma_lut = crtc_state->base.gamma_lut;
	struct intel_crtc *crtc = FUNC6(crtc_state->base.crtc);

	/*
	 * On GLK+ both pipe CSC and degamma LUT are controlled
	 * by csc_enable. Hence for the cases where the CSC is
	 * needed but degamma LUT is not we need to load a
	 * linear degamma LUT. In fact we'll just always load
	 * the degama LUT so that we don't have to reload
	 * it every time the pipe CSC is being enabled.
	 */
	if (crtc_state->base.degamma_lut)
		FUNC2(crtc_state);
	else
		FUNC3(crtc_state);

	if (crtc_state->gamma_mode == GAMMA_MODE_MODE_8BIT) {
		FUNC4(crtc_state);
	} else {
		FUNC1(crtc, gamma_lut, FUNC0(0));
		FUNC5(crtc);
	}
}