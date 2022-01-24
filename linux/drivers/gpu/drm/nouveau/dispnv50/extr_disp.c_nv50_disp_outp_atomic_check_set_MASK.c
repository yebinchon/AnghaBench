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
struct TYPE_2__ {int ctrl; } ;
struct nv50_outp_atom {TYPE_1__ set; } ;
struct nv50_atom {int lock_core; int /*<<< orphan*/  state; } ;
struct drm_encoder {int dummy; } ;
struct drm_crtc_state {scalar_t__ active; } ;
struct drm_crtc {int dummy; } ;
struct drm_connector_state {struct drm_crtc* crtc; struct drm_encoder* best_encoder; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct nv50_outp_atom*) ; 
 int FUNC1 (struct nv50_outp_atom*) ; 
 scalar_t__ FUNC2 (struct drm_crtc_state*) ; 
 struct drm_crtc_state* FUNC3 (int /*<<< orphan*/ *,struct drm_crtc*) ; 
 struct nv50_outp_atom* FUNC4 (struct nv50_atom*,struct drm_encoder*) ; 

__attribute__((used)) static int
FUNC5(struct nv50_atom *atom,
				struct drm_connector_state *connector_state)
{
	struct drm_encoder *encoder = connector_state->best_encoder;
	struct drm_crtc_state *new_crtc_state;
	struct drm_crtc *crtc;
	struct nv50_outp_atom *outp;

	if (!(crtc = connector_state->crtc))
		return 0;

	new_crtc_state = FUNC3(&atom->state, crtc);
	if (new_crtc_state->active && FUNC2(new_crtc_state)) {
		outp = FUNC4(atom, encoder);
		if (FUNC0(outp))
			return FUNC1(outp);

		outp->set.ctrl = true;
		atom->lock_core = true;
	}

	return 0;
}