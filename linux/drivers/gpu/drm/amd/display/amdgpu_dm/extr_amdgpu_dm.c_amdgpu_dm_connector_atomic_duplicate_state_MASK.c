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
struct drm_connector {int /*<<< orphan*/  state; } ;
struct dm_connector_state {struct drm_connector_state base; int /*<<< orphan*/  underscan_vborder; int /*<<< orphan*/  underscan_hborder; int /*<<< orphan*/  underscan_enable; int /*<<< orphan*/  scaling; int /*<<< orphan*/  abm_level; int /*<<< orphan*/  freesync_capable; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct drm_connector*,struct drm_connector_state*) ; 
 struct dm_connector_state* FUNC1 (struct dm_connector_state*,int,int /*<<< orphan*/ ) ; 
 struct dm_connector_state* FUNC2 (int /*<<< orphan*/ ) ; 

struct drm_connector_state *
FUNC3(struct drm_connector *connector)
{
	struct dm_connector_state *state =
		FUNC2(connector->state);

	struct dm_connector_state *new_state =
			FUNC1(state, sizeof(*state), GFP_KERNEL);

	if (!new_state)
		return NULL;

	FUNC0(connector, &new_state->base);

	new_state->freesync_capable = state->freesync_capable;
	new_state->abm_level = state->abm_level;
	new_state->scaling = state->scaling;
	new_state->underscan_enable = state->underscan_enable;
	new_state->underscan_hborder = state->underscan_hborder;
	new_state->underscan_vborder = state->underscan_vborder;

	return &new_state->base;
}