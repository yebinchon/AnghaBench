#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct drm_crtc_state {struct drm_atomic_state* state; } ;
struct TYPE_6__ {int /*<<< orphan*/  id; } ;
struct drm_crtc {int /*<<< orphan*/  name; TYPE_3__ base; int /*<<< orphan*/  state; TYPE_1__* funcs; int /*<<< orphan*/  mutex; } ;
struct drm_atomic_state {TYPE_2__* crtcs; int /*<<< orphan*/  acquire_ctx; } ;
struct TYPE_5__ {struct drm_crtc* ptr; struct drm_crtc_state* new_state; int /*<<< orphan*/  old_state; struct drm_crtc_state* state; } ;
struct TYPE_4__ {struct drm_crtc_state* (* atomic_duplicate_state ) (struct drm_crtc*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct drm_crtc_state*,struct drm_atomic_state*) ; 
 int ENOMEM ; 
 struct drm_crtc_state* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 struct drm_crtc_state* FUNC3 (struct drm_atomic_state*,struct drm_crtc*) ; 
 int FUNC4 (struct drm_crtc*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct drm_crtc_state* FUNC6 (struct drm_crtc*) ; 

struct drm_crtc_state *
FUNC7(struct drm_atomic_state *state,
			  struct drm_crtc *crtc)
{
	int ret, index = FUNC4(crtc);
	struct drm_crtc_state *crtc_state;

	FUNC2(!state->acquire_ctx);

	crtc_state = FUNC3(state, crtc);
	if (crtc_state)
		return crtc_state;

	ret = FUNC5(&crtc->mutex, state->acquire_ctx);
	if (ret)
		return FUNC1(ret);

	crtc_state = crtc->funcs->atomic_duplicate_state(crtc);
	if (!crtc_state)
		return FUNC1(-ENOMEM);

	state->crtcs[index].state = crtc_state;
	state->crtcs[index].old_state = crtc->state;
	state->crtcs[index].new_state = crtc_state;
	state->crtcs[index].ptr = crtc;
	crtc_state->state = state;

	FUNC0("Added [CRTC:%d:%s] %p state to %p\n",
			 crtc->base.id, crtc->name, crtc_state, state);

	return crtc_state;
}