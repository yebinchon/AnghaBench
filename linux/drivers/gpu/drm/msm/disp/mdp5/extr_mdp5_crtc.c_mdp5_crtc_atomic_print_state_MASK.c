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
struct mdp5_pipeline {TYPE_2__* r_mixer; TYPE_1__* mixer; } ;
struct mdp5_kms {int caps; } ;
struct mdp5_crtc_state {char* cmd_mode; scalar_t__ ctl; struct mdp5_pipeline pipeline; } ;
struct drm_printer {int dummy; } ;
struct drm_crtc_state {int /*<<< orphan*/  crtc; } ;
struct TYPE_4__ {char* name; } ;
struct TYPE_3__ {char* name; } ;

/* Variables and functions */
 int MDP_CAP_SRC_SPLIT ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_printer*,char*,char*) ; 
 struct mdp5_kms* FUNC2 (int /*<<< orphan*/ ) ; 
 char* FUNC3 (scalar_t__) ; 
 struct mdp5_crtc_state* FUNC4 (struct drm_crtc_state const*) ; 

__attribute__((used)) static void
FUNC5(struct drm_printer *p,
			     const struct drm_crtc_state *state)
{
	struct mdp5_crtc_state *mdp5_cstate = FUNC4(state);
	struct mdp5_pipeline *pipeline = &mdp5_cstate->pipeline;
	struct mdp5_kms *mdp5_kms = FUNC2(state->crtc);

	if (FUNC0(!pipeline))
		return;

	if (mdp5_cstate->ctl)
		FUNC1(p, "\tctl=%d\n", FUNC3(mdp5_cstate->ctl));

	FUNC1(p, "\thwmixer=%s\n", pipeline->mixer ?
			pipeline->mixer->name : "(null)");

	if (mdp5_kms->caps & MDP_CAP_SRC_SPLIT)
		FUNC1(p, "\tright hwmixer=%s\n", pipeline->r_mixer ?
			   pipeline->r_mixer->name : "(null)");

	FUNC1(p, "\tcmd_mode=%d\n", mdp5_cstate->cmd_mode);
}