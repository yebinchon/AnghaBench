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
struct intel_crtc_state {TYPE_1__ base; } ;
struct intel_crtc {int dummy; } ;
struct drm_property_blob {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct intel_crtc_state const*) ; 
 int /*<<< orphan*/  FUNC1 (struct intel_crtc*,struct drm_property_blob const*) ; 
 int /*<<< orphan*/  FUNC2 (struct intel_crtc*,struct drm_property_blob const*) ; 
 scalar_t__ FUNC3 (struct intel_crtc_state const*) ; 
 int /*<<< orphan*/  FUNC4 (struct intel_crtc_state const*) ; 
 struct intel_crtc* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(const struct intel_crtc_state *crtc_state)
{
	struct intel_crtc *crtc = FUNC5(crtc_state->base.crtc);
	const struct drm_property_blob *gamma_lut = crtc_state->base.gamma_lut;
	const struct drm_property_blob *degamma_lut = crtc_state->base.degamma_lut;

	FUNC0(crtc_state);

	if (FUNC3(crtc_state)) {
		FUNC4(crtc_state);
		return;
	}

	if (degamma_lut)
		FUNC1(crtc, degamma_lut);

	if (gamma_lut)
		FUNC2(crtc, gamma_lut);
}