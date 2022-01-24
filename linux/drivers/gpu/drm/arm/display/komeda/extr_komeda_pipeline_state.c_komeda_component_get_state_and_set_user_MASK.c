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
struct komeda_pipeline_state {int /*<<< orphan*/  active_comps; void* binding_user; } ;
struct komeda_component_state {int /*<<< orphan*/  active_comps; void* binding_user; } ;
struct komeda_component {int /*<<< orphan*/  id; int /*<<< orphan*/  name; int /*<<< orphan*/  pipeline; } ;
struct drm_crtc {int dummy; } ;
struct drm_atomic_state {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EBUSY ; 
 struct komeda_pipeline_state* FUNC2 (struct komeda_pipeline_state*) ; 
 struct komeda_pipeline_state* FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct komeda_pipeline_state*) ; 
 scalar_t__ FUNC5 (void*,void*) ; 
 struct komeda_pipeline_state* FUNC6 (struct komeda_component*,struct drm_atomic_state*) ; 
 struct komeda_pipeline_state* FUNC7 (int /*<<< orphan*/ ,struct drm_atomic_state*,struct drm_crtc*) ; 

__attribute__((used)) static struct komeda_component_state *
FUNC8(struct komeda_component *c,
					struct drm_atomic_state *state,
					void *user,
					struct drm_crtc *crtc)
{
	struct komeda_pipeline_state *pipe_st;
	struct komeda_component_state *st;

	/* First check if the pipeline is available */
	pipe_st = FUNC7(c->pipeline,
							 state, crtc);
	if (FUNC4(pipe_st))
		return FUNC2(pipe_st);

	st = FUNC6(c, state);
	if (FUNC4(st))
		return st;

	/* check if the component has been occupied */
	if (FUNC5(user, st->binding_user)) {
		FUNC1("required %s is busy.\n", c->name);
		return FUNC3(-EBUSY);
	}

	st->binding_user = user;
	/* mark the component as active if user is valid */
	if (st->binding_user)
		pipe_st->active_comps |= FUNC0(c->id);

	return st;
}