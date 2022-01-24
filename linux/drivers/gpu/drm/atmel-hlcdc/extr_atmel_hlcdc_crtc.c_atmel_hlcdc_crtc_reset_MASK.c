#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct drm_crtc {TYPE_1__* state; } ;
struct TYPE_3__ {struct drm_crtc* crtc; } ;
struct atmel_hlcdc_crtc_state {TYPE_1__ base; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 struct atmel_hlcdc_crtc_state* FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (struct atmel_hlcdc_crtc_state*) ; 
 struct atmel_hlcdc_crtc_state* FUNC3 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct drm_crtc *crtc)
{
	struct atmel_hlcdc_crtc_state *state;

	if (crtc->state) {
		FUNC0(crtc->state);
		state = FUNC1(crtc->state);
		FUNC2(state);
		crtc->state = NULL;
	}

	state = FUNC3(sizeof(*state), GFP_KERNEL);
	if (state) {
		crtc->state = &state->base;
		crtc->state->crtc = crtc;
	}
}