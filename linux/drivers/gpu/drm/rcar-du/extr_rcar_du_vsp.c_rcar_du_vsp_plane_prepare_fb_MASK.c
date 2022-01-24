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
struct rcar_du_vsp_plane_state {int /*<<< orphan*/  sg_tables; } ;
struct rcar_du_vsp {int dummy; } ;
struct drm_plane_state {int /*<<< orphan*/  fb; int /*<<< orphan*/  visible; } ;
struct drm_plane {int dummy; } ;
struct TYPE_2__ {struct rcar_du_vsp* vsp; } ;

/* Variables and functions */
 int FUNC0 (struct drm_plane*,struct drm_plane_state*) ; 
 int FUNC1 (struct rcar_du_vsp*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (struct drm_plane*) ; 
 struct rcar_du_vsp_plane_state* FUNC3 (struct drm_plane_state*) ; 

__attribute__((used)) static int FUNC4(struct drm_plane *plane,
					struct drm_plane_state *state)
{
	struct rcar_du_vsp_plane_state *rstate = FUNC3(state);
	struct rcar_du_vsp *vsp = FUNC2(plane)->vsp;
	int ret;

	/*
	 * There's no need to prepare (and unprepare) the framebuffer when the
	 * plane is not visible, as it will not be displayed.
	 */
	if (!state->visible)
		return 0;

	ret = FUNC1(vsp, state->fb, rstate->sg_tables);
	if (ret < 0)
		return ret;

	return FUNC0(plane, state);
}