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
struct vmw_plane_state {scalar_t__ surf; scalar_t__ bo; } ;
struct drm_plane_state {struct drm_framebuffer* fb; } ;
struct drm_plane {int dummy; } ;
struct drm_framebuffer {int dummy; } ;
struct TYPE_6__ {scalar_t__ bo; } ;
struct TYPE_5__ {scalar_t__ buffer; } ;
struct TYPE_4__ {scalar_t__ surface; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*) ; 
 TYPE_3__* FUNC2 (struct drm_framebuffer*) ; 
 TYPE_2__* FUNC3 (struct drm_framebuffer*) ; 
 TYPE_1__* FUNC4 (struct drm_framebuffer*) ; 
 struct vmw_plane_state* FUNC5 (struct drm_plane_state*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__*) ; 

int
FUNC8(struct drm_plane *plane,
			       struct drm_plane_state *new_state)
{
	struct drm_framebuffer *fb = new_state->fb;
	struct vmw_plane_state *vps = FUNC5(new_state);


	if (vps->surf)
		FUNC7(&vps->surf);

	if (vps->bo)
		FUNC1(&vps->bo);

	if (fb) {
		if (FUNC2(fb)->bo) {
			vps->bo = FUNC3(fb)->buffer;
			FUNC0(vps->bo);
		} else {
			vps->surf = FUNC4(fb)->surface;
			FUNC6(vps->surf);
		}
	}

	return 0;
}