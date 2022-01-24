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
struct mdp5_kms {int /*<<< orphan*/  base; } ;
struct mdp5_crtc_state {int /*<<< orphan*/  pipeline; int /*<<< orphan*/  ctl; } ;
struct drm_crtc {int /*<<< orphan*/  state; } ;

/* Variables and functions */
 struct mdp5_kms* FUNC0 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct mdp5_crtc_state* FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(struct drm_crtc *crtc)
{
	struct mdp5_crtc_state *mdp5_cstate = FUNC3(crtc->state);
	struct mdp5_kms *mdp5_kms = FUNC0(crtc);

	/* should this be done elsewhere ? */
	FUNC2(&mdp5_kms->base);

	FUNC1(mdp5_cstate->ctl, &mdp5_cstate->pipeline);
}