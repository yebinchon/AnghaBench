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
struct rcar_du_vsp_plane_state {int /*<<< orphan*/  format; } ;
struct drm_plane_state {int dummy; } ;
struct drm_plane {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct drm_plane*,struct drm_plane_state*,int /*<<< orphan*/ *) ; 
 struct rcar_du_vsp_plane_state* FUNC1 (struct drm_plane_state*) ; 

__attribute__((used)) static int FUNC2(struct drm_plane *plane,
					  struct drm_plane_state *state)
{
	struct rcar_du_vsp_plane_state *rstate = FUNC1(state);

	return FUNC0(plane, state, &rstate->format);
}