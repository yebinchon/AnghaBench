#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct drm_crtc_state {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  base; } ;
struct TYPE_4__ {TYPE_1__ mutex; } ;
struct drm_crtc {struct drm_crtc_state* state; TYPE_2__ mutex; } ;
struct drm_atomic_state {int /*<<< orphan*/  acquire_ctx; } ;

/* Variables and functions */
 int EALREADY ; 
 struct drm_crtc_state* FUNC0 (int) ; 
 struct drm_crtc_state* FUNC1 (struct drm_atomic_state*,struct drm_crtc*) ; 
 int FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct drm_crtc_state *
FUNC4(struct drm_atomic_state *state, struct drm_crtc *crtc)
{
	struct drm_crtc_state *crtc_state;

	crtc_state = FUNC1(state, crtc);
	if (crtc_state) {
		FUNC3(&crtc->mutex.mutex.base);
	} else {
		int ret = FUNC2(&crtc->mutex, state->acquire_ctx);

		if (ret != 0 && ret != -EALREADY)
			return FUNC0(ret);

		crtc_state = crtc->state;
	}

	return crtc_state;
}