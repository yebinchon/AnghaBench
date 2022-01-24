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
struct drm_mode_config {int /*<<< orphan*/  num_connector; int /*<<< orphan*/  connection_mutex; } ;
struct drm_crtc_state {int dummy; } ;
struct drm_connector_state {scalar_t__ crtc; struct drm_atomic_state* state; } ;
struct TYPE_6__ {int /*<<< orphan*/  id; } ;
struct drm_connector {int /*<<< orphan*/  name; TYPE_3__ base; int /*<<< orphan*/  state; TYPE_2__* funcs; TYPE_1__* dev; } ;
struct drm_atomic_state {int num_connector; struct __drm_connnectors_state* connectors; int /*<<< orphan*/  acquire_ctx; } ;
struct __drm_connnectors_state {struct drm_connector* ptr; struct drm_connector_state* new_state; int /*<<< orphan*/  old_state; struct drm_connector_state* state; } ;
struct TYPE_5__ {struct drm_connector_state* (* atomic_duplicate_state ) (struct drm_connector*) ;} ;
struct TYPE_4__ {struct drm_mode_config mode_config; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct drm_connector_state*,struct drm_atomic_state*) ; 
 int ENOMEM ; 
 struct drm_connector_state* FUNC1 (struct drm_crtc_state*) ; 
 struct drm_connector_state* FUNC2 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC3 (struct drm_crtc_state*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 struct drm_crtc_state* FUNC5 (struct drm_atomic_state*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_connector*) ; 
 int FUNC7 (struct drm_connector*) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct __drm_connnectors_state* FUNC9 (struct __drm_connnectors_state*,int,int /*<<< orphan*/ ) ; 
 int FUNC10 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct __drm_connnectors_state*,int /*<<< orphan*/ ,int) ; 
 struct drm_connector_state* FUNC12 (struct drm_connector*) ; 

struct drm_connector_state *
FUNC13(struct drm_atomic_state *state,
			  struct drm_connector *connector)
{
	int ret, index;
	struct drm_mode_config *config = &connector->dev->mode_config;
	struct drm_connector_state *connector_state;

	FUNC4(!state->acquire_ctx);

	ret = FUNC8(&config->connection_mutex, state->acquire_ctx);
	if (ret)
		return FUNC2(ret);

	index = FUNC7(connector);

	if (index >= state->num_connector) {
		struct __drm_connnectors_state *c;
		int alloc = FUNC10(index + 1, config->num_connector);

		c = FUNC9(state->connectors, alloc * sizeof(*state->connectors), GFP_KERNEL);
		if (!c)
			return FUNC2(-ENOMEM);

		state->connectors = c;
		FUNC11(&state->connectors[state->num_connector], 0,
		       sizeof(*state->connectors) * (alloc - state->num_connector));

		state->num_connector = alloc;
	}

	if (state->connectors[index].state)
		return state->connectors[index].state;

	connector_state = connector->funcs->atomic_duplicate_state(connector);
	if (!connector_state)
		return FUNC2(-ENOMEM);

	FUNC6(connector);
	state->connectors[index].state = connector_state;
	state->connectors[index].old_state = connector->state;
	state->connectors[index].new_state = connector_state;
	state->connectors[index].ptr = connector;
	connector_state->state = state;

	FUNC0("Added [CONNECTOR:%d:%s] %p state to %p\n",
			 connector->base.id, connector->name,
			 connector_state, state);

	if (connector_state->crtc) {
		struct drm_crtc_state *crtc_state;

		crtc_state = FUNC5(state,
						       connector_state->crtc);
		if (FUNC3(crtc_state))
			return FUNC1(crtc_state);
	}

	return connector_state;
}