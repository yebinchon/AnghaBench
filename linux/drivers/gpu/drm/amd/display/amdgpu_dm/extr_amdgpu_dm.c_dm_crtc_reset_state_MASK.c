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
struct drm_crtc {TYPE_1__* state; } ;
struct TYPE_2__ {struct drm_crtc* crtc; } ;
struct dm_crtc_state {TYPE_1__ base; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_crtc*,TYPE_1__*) ; 
 struct dm_crtc_state* FUNC2 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct drm_crtc *crtc)
{
	struct dm_crtc_state *state;

	if (crtc->state)
		FUNC1(crtc, crtc->state);

	state = FUNC2(sizeof(*state), GFP_KERNEL);
	if (FUNC0(!state))
		return;

	crtc->state = &state->base;
	crtc->state->crtc = crtc;

}