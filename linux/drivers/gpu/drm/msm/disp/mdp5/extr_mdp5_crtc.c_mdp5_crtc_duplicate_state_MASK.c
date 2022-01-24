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
struct mdp5_crtc_state {struct drm_crtc_state base; } ;
struct drm_crtc {int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_crtc*,struct drm_crtc_state*) ; 
 struct mdp5_crtc_state* FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct drm_crtc_state *
FUNC4(struct drm_crtc *crtc)
{
	struct mdp5_crtc_state *mdp5_cstate;

	if (FUNC0(!crtc->state))
		return NULL;

	mdp5_cstate = FUNC2(FUNC3(crtc->state),
			      sizeof(*mdp5_cstate), GFP_KERNEL);
	if (!mdp5_cstate)
		return NULL;

	FUNC1(crtc, &mdp5_cstate->base);

	return &mdp5_cstate->base;
}