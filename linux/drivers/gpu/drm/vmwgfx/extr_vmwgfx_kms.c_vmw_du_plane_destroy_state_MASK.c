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
struct vmw_plane_state {scalar_t__ bo; scalar_t__ surf; } ;
struct drm_plane_state {int dummy; } ;
struct drm_plane {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_plane*,struct drm_plane_state*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*) ; 
 struct vmw_plane_state* FUNC2 (struct drm_plane_state*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*) ; 

void
FUNC4(struct drm_plane *plane,
			   struct drm_plane_state *state)
{
	struct vmw_plane_state *vps = FUNC2(state);


	/* Should have been freed by cleanup_fb */
	if (vps->surf)
		FUNC3(&vps->surf);

	if (vps->bo)
		FUNC1(&vps->bo);

	FUNC0(plane, state);
}