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
struct vmw_plane_state {scalar_t__ cpp; int /*<<< orphan*/  content_fb_type; int /*<<< orphan*/  pinned; scalar_t__ surf; } ;
struct drm_plane_state {int dummy; } ;
struct drm_plane {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SAME_AS_DISPLAY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_plane*,struct drm_plane_state*) ; 
 struct vmw_plane_state* FUNC2 (struct drm_plane_state*) ; 

__attribute__((used)) static void
FUNC3(struct drm_plane *plane,
				  struct drm_plane_state *old_state)
{
	struct vmw_plane_state *vps = FUNC2(old_state);

	if (vps->surf)
		FUNC0(!vps->pinned);

	FUNC1(plane, old_state);

	vps->content_fb_type = SAME_AS_DISPLAY;
	vps->cpp = 0;
}