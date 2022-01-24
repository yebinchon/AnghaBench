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
struct TYPE_3__ {struct drm_crtc* crtc; } ;
struct komeda_crtc_state {TYPE_1__ base; } ;
struct drm_crtc {TYPE_1__* state; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct komeda_crtc_state* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC4(struct drm_crtc *crtc)
{
	struct komeda_crtc_state *state;

	if (crtc->state)
		FUNC0(crtc->state);

	FUNC1(FUNC3(crtc->state));
	crtc->state = NULL;

	state = FUNC2(sizeof(*state), GFP_KERNEL);
	if (state) {
		crtc->state = &state->base;
		crtc->state->crtc = crtc;
	}
}