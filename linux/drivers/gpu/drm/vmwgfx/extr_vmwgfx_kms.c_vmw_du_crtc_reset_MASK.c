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
struct vmw_crtc_state {TYPE_1__ base; } ;
struct drm_crtc {TYPE_1__* state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct vmw_crtc_state* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

void FUNC5(struct drm_crtc *crtc)
{
	struct vmw_crtc_state *vcs;


	if (crtc->state) {
		FUNC1(crtc->state);

		FUNC2(FUNC4(crtc->state));
	}

	vcs = FUNC3(sizeof(*vcs), GFP_KERNEL);

	if (!vcs) {
		FUNC0("Cannot allocate vmw_crtc_state\n");
		return;
	}

	crtc->state = &vcs->base;
	crtc->state->crtc = crtc;
}