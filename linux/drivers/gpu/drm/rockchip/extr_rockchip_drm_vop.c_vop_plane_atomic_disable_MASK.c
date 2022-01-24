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
struct vop_win {int dummy; } ;
struct vop {int /*<<< orphan*/  reg_lock; } ;
struct drm_plane_state {int /*<<< orphan*/  crtc; } ;
struct drm_plane {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct vop* FUNC2 (int /*<<< orphan*/ ) ; 
 struct vop_win* FUNC3 (struct drm_plane*) ; 
 int /*<<< orphan*/  FUNC4 (struct vop*,struct vop_win*) ; 

__attribute__((used)) static void FUNC5(struct drm_plane *plane,
				     struct drm_plane_state *old_state)
{
	struct vop_win *vop_win = FUNC3(plane);
	struct vop *vop = FUNC2(old_state->crtc);

	if (!old_state->crtc)
		return;

	FUNC0(&vop->reg_lock);

	FUNC4(vop, vop_win);

	FUNC1(&vop->reg_lock);
}