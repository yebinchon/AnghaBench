#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct drm_crtc_state {int dummy; } ;
struct malidp_crtc_state {struct drm_crtc_state base; scalar_t__ scaled_planes_mask; int /*<<< orphan*/  scaler_config; int /*<<< orphan*/ * coloradj_coeffs; int /*<<< orphan*/ * gamma_coeffs; } ;
struct drm_crtc {int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_crtc*,struct drm_crtc_state*) ; 
 struct malidp_crtc_state* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 struct malidp_crtc_state* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct drm_crtc_state *FUNC5(struct drm_crtc *crtc)
{
	struct malidp_crtc_state *state, *old_state;

	if (FUNC0(!crtc->state))
		return NULL;

	old_state = FUNC4(crtc->state);
	state = FUNC2(sizeof(*state), GFP_KERNEL);
	if (!state)
		return NULL;

	FUNC1(crtc, &state->base);
	FUNC3(state->gamma_coeffs, old_state->gamma_coeffs,
	       sizeof(state->gamma_coeffs));
	FUNC3(state->coloradj_coeffs, old_state->coloradj_coeffs,
	       sizeof(state->coloradj_coeffs));
	FUNC3(&state->scaler_config, &old_state->scaler_config,
	       sizeof(state->scaler_config));
	state->scaled_planes_mask = 0;

	return &state->base;
}