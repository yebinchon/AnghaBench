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
struct vmw_plane_state {scalar_t__ bo_size; scalar_t__ bo; } ;
struct drm_plane_state {struct drm_crtc* crtc; } ;
struct drm_plane {TYPE_1__* state; } ;
struct drm_crtc {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {struct drm_crtc* crtc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_plane*,struct drm_plane_state*) ; 
 struct vmw_plane_state* FUNC3 (struct drm_plane_state*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct drm_plane *plane,
				 struct drm_plane_state *old_state)
{
	struct vmw_plane_state *vps = FUNC3(old_state);
	struct drm_crtc *crtc = plane->state->crtc ?
		plane->state->crtc : old_state->crtc;

	if (vps->bo)
		FUNC0(FUNC4(crtc->dev), vps->bo, false);
	FUNC1(&vps->bo);
	vps->bo_size = 0;

	FUNC2(plane, old_state);
}