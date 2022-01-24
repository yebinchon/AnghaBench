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
struct TYPE_2__ {struct drm_property_blob* degamma_lut; struct drm_property_blob* gamma_lut; int /*<<< orphan*/  crtc; } ;
struct intel_crtc_state {scalar_t__ gamma_mode; TYPE_1__ base; } ;
struct intel_crtc {int dummy; } ;
struct drm_property_blob {int dummy; } ;

/* Variables and functions */
 scalar_t__ GAMMA_MODE_MODE_8BIT ; 
 scalar_t__ GAMMA_MODE_MODE_SPLIT ; 
 int FUNC0 (int) ; 
 int PAL_PREC_SPLIT_MODE ; 
 int /*<<< orphan*/  FUNC1 (struct intel_crtc*,struct drm_property_blob const*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct intel_crtc_state const*) ; 
 int /*<<< orphan*/  FUNC3 (struct intel_crtc*) ; 
 struct intel_crtc* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(const struct intel_crtc_state *crtc_state)
{
	struct intel_crtc *crtc = FUNC4(crtc_state->base.crtc);
	const struct drm_property_blob *gamma_lut = crtc_state->base.gamma_lut;
	const struct drm_property_blob *degamma_lut = crtc_state->base.degamma_lut;

	if (crtc_state->gamma_mode == GAMMA_MODE_MODE_8BIT) {
		FUNC2(crtc_state);
	} else if (crtc_state->gamma_mode == GAMMA_MODE_MODE_SPLIT) {
		FUNC1(crtc, degamma_lut, PAL_PREC_SPLIT_MODE |
				FUNC0(0));
		FUNC3(crtc);
		FUNC1(crtc, gamma_lut, PAL_PREC_SPLIT_MODE |
				FUNC0(512));
	} else {
		const struct drm_property_blob *blob = gamma_lut ?: degamma_lut;

		FUNC1(crtc, blob,
				FUNC0(0));
		FUNC3(crtc);
	}
}