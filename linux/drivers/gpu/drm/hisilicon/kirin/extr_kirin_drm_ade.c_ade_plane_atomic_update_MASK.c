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
struct kirin_plane {int dummy; } ;
struct drm_plane_state {int src_x; int src_y; int src_w; int src_h; int /*<<< orphan*/  crtc_h; int /*<<< orphan*/  crtc_w; int /*<<< orphan*/  crtc_y; int /*<<< orphan*/  crtc_x; int /*<<< orphan*/  fb; } ;
struct drm_plane {struct drm_plane_state* state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct kirin_plane*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int) ; 
 struct kirin_plane* FUNC1 (struct drm_plane*) ; 

__attribute__((used)) static void FUNC2(struct drm_plane *plane,
				    struct drm_plane_state *old_state)
{
	struct drm_plane_state *state = plane->state;
	struct kirin_plane *kplane = FUNC1(plane);

	FUNC0(kplane, state->fb, state->crtc_x, state->crtc_y,
			   state->crtc_w, state->crtc_h,
			   state->src_x >> 16, state->src_y >> 16,
			   state->src_w >> 16, state->src_h >> 16);
}