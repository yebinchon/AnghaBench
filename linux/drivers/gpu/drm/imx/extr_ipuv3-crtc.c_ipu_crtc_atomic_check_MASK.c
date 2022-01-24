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
typedef  int u32 ;
struct drm_crtc_state {int plane_mask; scalar_t__ active; } ;
struct drm_crtc {int /*<<< orphan*/  primary; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct drm_crtc *crtc,
				 struct drm_crtc_state *state)
{
	u32 primary_plane_mask = FUNC0(crtc->primary);

	if (state->active && (primary_plane_mask & state->plane_mask) == 0)
		return -EINVAL;

	return 0;
}