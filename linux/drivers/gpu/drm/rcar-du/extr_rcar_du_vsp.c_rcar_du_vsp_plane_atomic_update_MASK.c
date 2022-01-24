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
struct rcar_du_vsp_plane {int /*<<< orphan*/  index; TYPE_2__* vsp; } ;
struct rcar_du_crtc {int /*<<< orphan*/  vsp_pipe; } ;
struct drm_plane_state {int /*<<< orphan*/  crtc; } ;
struct drm_plane {TYPE_1__* state; } ;
struct TYPE_4__ {int /*<<< orphan*/  vsp; } ;
struct TYPE_3__ {scalar_t__ visible; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rcar_du_vsp_plane*) ; 
 struct rcar_du_crtc* FUNC1 (int /*<<< orphan*/ ) ; 
 struct rcar_du_vsp_plane* FUNC2 (struct drm_plane*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct drm_plane *plane,
					struct drm_plane_state *old_state)
{
	struct rcar_du_vsp_plane *rplane = FUNC2(plane);
	struct rcar_du_crtc *crtc = FUNC1(old_state->crtc);

	if (plane->state->visible)
		FUNC0(rplane);
	else
		FUNC3(rplane->vsp->vsp, crtc->vsp_pipe,
				      rplane->index, NULL);
}