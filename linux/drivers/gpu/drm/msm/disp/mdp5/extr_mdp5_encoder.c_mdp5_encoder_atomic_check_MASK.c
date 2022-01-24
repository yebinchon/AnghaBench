#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct mdp5_interface {int dummy; } ;
struct mdp5_encoder {struct mdp5_ctl* ctl; struct mdp5_interface* intf; } ;
struct mdp5_ctl {int dummy; } ;
struct TYPE_2__ {struct mdp5_interface* intf; } ;
struct mdp5_crtc_state {int defer_start; TYPE_1__ pipeline; struct mdp5_ctl* ctl; } ;
struct drm_encoder {int dummy; } ;
struct drm_crtc_state {int dummy; } ;
struct drm_connector_state {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct drm_crtc_state*) ; 
 struct mdp5_crtc_state* FUNC1 (struct drm_crtc_state*) ; 
 struct mdp5_encoder* FUNC2 (struct drm_encoder*) ; 

__attribute__((used)) static int FUNC3(struct drm_encoder *encoder,
				     struct drm_crtc_state *crtc_state,
				     struct drm_connector_state *conn_state)
{
	struct mdp5_encoder *mdp5_encoder = FUNC2(encoder);
	struct mdp5_crtc_state *mdp5_cstate = FUNC1(crtc_state);
	struct mdp5_interface *intf = mdp5_encoder->intf;
	struct mdp5_ctl *ctl = mdp5_encoder->ctl;

	mdp5_cstate->ctl = ctl;
	mdp5_cstate->pipeline.intf = intf;

	/*
	 * This is a bit awkward, but we want to flush the CTL and hit the
	 * START bit at most once for an atomic update.  In the non-full-
	 * modeset case, this is done from crtc->atomic_flush(), but that
	 * is too early in the case of full modeset, in which case we
	 * defer to encoder->enable().  But we need to *know* whether
	 * encoder->enable() will be called to do this:
	 */
	if (FUNC0(crtc_state))
		mdp5_cstate->defer_start = true;

	return 0;
}