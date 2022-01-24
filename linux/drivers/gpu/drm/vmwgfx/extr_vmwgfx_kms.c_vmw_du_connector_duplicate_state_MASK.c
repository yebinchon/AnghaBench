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
struct drm_connector_state {int dummy; } ;
struct vmw_connector_state {struct drm_connector_state base; } ;
struct drm_connector {int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_connector*,struct drm_connector_state*) ; 
 struct vmw_connector_state* FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

struct drm_connector_state *
FUNC3(struct drm_connector *connector)
{
	struct drm_connector_state *state;
	struct vmw_connector_state *vcs;

	if (FUNC0(!connector->state))
		return NULL;

	vcs = FUNC2(connector->state, sizeof(*vcs), GFP_KERNEL);

	if (!vcs)
		return NULL;

	state = &vcs->base;

	FUNC1(connector, state);

	return state;
}