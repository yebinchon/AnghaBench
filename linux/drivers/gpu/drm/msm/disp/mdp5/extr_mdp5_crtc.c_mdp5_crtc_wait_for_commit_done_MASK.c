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
struct mdp5_crtc_state {scalar_t__ cmd_mode; } ;
struct drm_crtc {int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_crtc*) ; 
 struct mdp5_crtc_state* FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(struct drm_crtc *crtc)
{
	struct mdp5_crtc_state *mdp5_cstate = FUNC2(crtc->state);

	if (mdp5_cstate->cmd_mode)
		FUNC1(crtc);
	else
		FUNC0(crtc);
}