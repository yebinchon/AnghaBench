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
struct drm_crtc_state {int dummy; } ;
struct vmw_crtc_state {struct drm_crtc_state base; } ;
struct drm_crtc {int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_crtc*,struct drm_crtc_state*) ; 
 struct vmw_crtc_state* FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

struct drm_crtc_state *
FUNC3(struct drm_crtc *crtc)
{
	struct drm_crtc_state *state;
	struct vmw_crtc_state *vcs;

	if (FUNC0(!crtc->state))
		return NULL;

	vcs = FUNC2(crtc->state, sizeof(*vcs), GFP_KERNEL);

	if (!vcs)
		return NULL;

	state = &vcs->base;

	FUNC1(crtc, state);

	return state;
}