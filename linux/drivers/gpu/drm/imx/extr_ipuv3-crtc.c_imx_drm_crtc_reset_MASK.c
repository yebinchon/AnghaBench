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
struct TYPE_2__ {struct drm_crtc* crtc; scalar_t__ mode_blob; } ;
struct imx_crtc_state {TYPE_1__ base; } ;
struct drm_crtc {TYPE_1__* state; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 struct imx_crtc_state* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct imx_crtc_state*,int /*<<< orphan*/ ,int) ; 
 struct imx_crtc_state* FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC4(struct drm_crtc *crtc)
{
	struct imx_crtc_state *state;

	if (crtc->state) {
		if (crtc->state->mode_blob)
			FUNC0(crtc->state->mode_blob);

		state = FUNC3(crtc->state);
		FUNC2(state, 0, sizeof(*state));
	} else {
		state = FUNC1(sizeof(*state), GFP_KERNEL);
		if (!state)
			return;
		crtc->state = &state->base;
	}

	state->base.crtc = crtc;
}