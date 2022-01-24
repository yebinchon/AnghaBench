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
struct drm_plane_state {int /*<<< orphan*/  fb; struct drm_plane* plane; } ;
struct TYPE_4__ {int /*<<< orphan*/  id; } ;
struct drm_plane {int /*<<< orphan*/  name; TYPE_2__ base; } ;
struct TYPE_3__ {int /*<<< orphan*/  id; } ;
struct drm_framebuffer {TYPE_1__ base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct drm_plane_state*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct drm_framebuffer*) ; 

void
FUNC2(struct drm_plane_state *plane_state,
			    struct drm_framebuffer *fb)
{
	struct drm_plane *plane = plane_state->plane;

	if (fb)
		FUNC0("Set [FB:%d] for [PLANE:%d:%s] state %p\n",
				 fb->base.id, plane->base.id, plane->name,
				 plane_state);
	else
		FUNC0("Set [NOFB] for [PLANE:%d:%s] state %p\n",
				 plane->base.id, plane->name, plane_state);

	FUNC1(&plane_state->fb, fb);
}