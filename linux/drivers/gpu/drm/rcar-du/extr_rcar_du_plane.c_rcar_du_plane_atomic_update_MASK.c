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
struct rcar_du_plane_state {scalar_t__ source; } ;
struct rcar_du_plane {TYPE_1__* group; } ;
struct drm_plane_state {int /*<<< orphan*/  visible; } ;
struct drm_plane {struct drm_plane_state* state; } ;
struct TYPE_2__ {int need_restart; } ;

/* Variables and functions */
 scalar_t__ RCAR_DU_PLANE_MEMORY ; 
 int /*<<< orphan*/  FUNC0 (struct rcar_du_plane*) ; 
 struct rcar_du_plane* FUNC1 (struct drm_plane*) ; 
 struct rcar_du_plane_state* FUNC2 (struct drm_plane_state*) ; 

__attribute__((used)) static void FUNC3(struct drm_plane *plane,
					struct drm_plane_state *old_state)
{
	struct rcar_du_plane *rplane = FUNC1(plane);
	struct rcar_du_plane_state *old_rstate;
	struct rcar_du_plane_state *new_rstate;

	if (!plane->state->visible)
		return;

	FUNC0(rplane);

	/*
	 * Check whether the source has changed from memory to live source or
	 * from live source to memory. The source has been configured by the
	 * VSPS bit in the PnDDCR4 register. Although the datasheet states that
	 * the bit is updated during vertical blanking, it seems that updates
	 * only occur when the DU group is held in reset through the DSYSR.DRES
	 * bit. We thus need to restart the group if the source changes.
	 */
	old_rstate = FUNC2(old_state);
	new_rstate = FUNC2(plane->state);

	if ((old_rstate->source == RCAR_DU_PLANE_MEMORY) !=
	    (new_rstate->source == RCAR_DU_PLANE_MEMORY))
		rplane->group->need_restart = true;
}