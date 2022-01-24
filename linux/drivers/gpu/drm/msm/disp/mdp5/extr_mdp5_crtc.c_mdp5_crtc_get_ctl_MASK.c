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
struct mdp5_ctl {int dummy; } ;
struct mdp5_crtc_state {struct mdp5_ctl* ctl; } ;
struct drm_crtc {int /*<<< orphan*/  state; } ;

/* Variables and functions */
 struct mdp5_crtc_state* FUNC0 (int /*<<< orphan*/ ) ; 

struct mdp5_ctl *FUNC1(struct drm_crtc *crtc)
{
	struct mdp5_crtc_state *mdp5_cstate = FUNC0(crtc->state);

	return mdp5_cstate->ctl;
}