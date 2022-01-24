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
struct TYPE_2__ {int zpos; } ;
struct rcar_du_plane_state {int hwindex; TYPE_1__ state; int /*<<< orphan*/  colorkey; int /*<<< orphan*/  source; } ;
struct drm_plane {scalar_t__ type; int /*<<< orphan*/ * state; } ;

/* Variables and functions */
 scalar_t__ DRM_PLANE_TYPE_PRIMARY ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  RCAR_DU_COLORKEY_NONE ; 
 int /*<<< orphan*/  RCAR_DU_PLANE_MEMORY ; 
 int /*<<< orphan*/  FUNC0 (struct drm_plane*,TYPE_1__*) ; 
 struct rcar_du_plane_state* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_plane*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct drm_plane *plane)
{
	struct rcar_du_plane_state *state;

	if (plane->state) {
		FUNC2(plane, plane->state);
		plane->state = NULL;
	}

	state = FUNC1(sizeof(*state), GFP_KERNEL);
	if (state == NULL)
		return;

	FUNC0(plane, &state->state);

	state->hwindex = -1;
	state->source = RCAR_DU_PLANE_MEMORY;
	state->colorkey = RCAR_DU_COLORKEY_NONE;
	state->state.zpos = plane->type == DRM_PLANE_TYPE_PRIMARY ? 0 : 1;
}