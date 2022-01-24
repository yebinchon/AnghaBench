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
struct komeda_pipeline_state {struct drm_crtc* crtc; scalar_t__ active_comps; } ;
struct komeda_pipeline {int /*<<< orphan*/  id; } ;
struct komeda_crtc_state {int /*<<< orphan*/  affected_pipes; int /*<<< orphan*/  active_pipes; } ;
struct drm_crtc {int dummy; } ;
struct drm_atomic_state {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  EBUSY ; 
 struct komeda_pipeline_state* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct komeda_pipeline_state*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_atomic_state*,struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_crtc*) ; 
 scalar_t__ FUNC6 (struct drm_crtc*,struct drm_crtc*) ; 
 struct komeda_pipeline_state* FUNC7 (struct komeda_pipeline*,struct drm_atomic_state*) ; 
 struct komeda_crtc_state* FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct komeda_pipeline_state *
FUNC9(struct komeda_pipeline *pipe,
				       struct drm_atomic_state *state,
				       struct drm_crtc *crtc)
{
	struct komeda_pipeline_state *st;

	st = FUNC7(pipe, state);
	if (FUNC3(st))
		return st;

	if (FUNC6(crtc, st->crtc)) {
		FUNC1("CRTC%d required pipeline%d is busy.\n",
				 FUNC5(crtc), pipe->id);
		return FUNC2(-EBUSY);
	}

	/* pipeline only can be disabled when the it is free or unused */
	if (!crtc && st->active_comps) {
		FUNC1("Disabling a busy pipeline:%d.\n", pipe->id);
		return FUNC2(-EBUSY);
	}

	st->crtc = crtc;

	if (crtc) {
		struct komeda_crtc_state *kcrtc_st;

		kcrtc_st = FUNC8(FUNC4(state,
								     crtc));

		kcrtc_st->active_pipes |= FUNC0(pipe->id);
		kcrtc_st->affected_pipes |= FUNC0(pipe->id);
	}
	return st;
}