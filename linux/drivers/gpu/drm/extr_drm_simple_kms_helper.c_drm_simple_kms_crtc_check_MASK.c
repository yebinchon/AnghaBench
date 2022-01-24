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
struct drm_crtc_state {int plane_mask; int enable; int /*<<< orphan*/  state; } ;
struct drm_crtc {int /*<<< orphan*/  primary; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ ,struct drm_crtc*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct drm_crtc *crtc,
				     struct drm_crtc_state *state)
{
	bool has_primary = state->plane_mask &
			   FUNC1(crtc->primary);

	/* We always want to have an active plane with an active CRTC */
	if (has_primary != state->enable)
		return -EINVAL;

	return FUNC0(state->state, crtc);
}