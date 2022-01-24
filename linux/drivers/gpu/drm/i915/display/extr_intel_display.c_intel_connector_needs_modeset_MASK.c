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
struct intel_crtc {int dummy; } ;
struct intel_atomic_state {int dummy; } ;
struct drm_connector_state {scalar_t__ crtc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct intel_atomic_state*,struct intel_crtc*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 struct intel_crtc* FUNC2 (scalar_t__) ; 

__attribute__((used)) static bool
FUNC3(struct intel_atomic_state *state,
			      const struct drm_connector_state *old_conn_state,
			      const struct drm_connector_state *new_conn_state)
{
	struct intel_crtc *old_crtc = old_conn_state->crtc ?
				      FUNC2(old_conn_state->crtc) : NULL;
	struct intel_crtc *new_crtc = new_conn_state->crtc ?
				      FUNC2(new_conn_state->crtc) : NULL;

	return new_crtc != old_crtc ||
	       (new_crtc &&
		FUNC1(FUNC0(state, new_crtc)));
}