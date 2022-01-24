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
struct drm_crtc_state {int mode_changed; } ;
struct drm_crtc {int dummy; } ;
struct drm_connector_state {int /*<<< orphan*/  hdr_output_metadata; struct drm_crtc* crtc; } ;
struct drm_connector {int dummy; } ;
struct drm_atomic_state {int dummy; } ;
struct dc_info_packet {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct drm_crtc_state*) ; 
 int FUNC1 (struct drm_crtc_state*) ; 
 struct drm_crtc_state* FUNC2 (struct drm_atomic_state*,struct drm_crtc*) ; 
 struct drm_connector_state* FUNC3 (struct drm_atomic_state*,struct drm_connector*) ; 
 struct drm_connector_state* FUNC4 (struct drm_atomic_state*,struct drm_connector*) ; 
 int FUNC5 (struct drm_connector_state*,struct dc_info_packet*) ; 
 scalar_t__ FUNC6 (struct drm_connector_state*,struct drm_connector_state*) ; 

__attribute__((used)) static int
FUNC7(struct drm_connector *conn,
				 struct drm_atomic_state *state)
{
	struct drm_connector_state *new_con_state =
		FUNC3(state, conn);
	struct drm_connector_state *old_con_state =
		FUNC4(state, conn);
	struct drm_crtc *crtc = new_con_state->crtc;
	struct drm_crtc_state *new_crtc_state;
	int ret;

	if (!crtc)
		return 0;

	if (FUNC6(old_con_state, new_con_state)) {
		struct dc_info_packet hdr_infopacket;

		ret = FUNC5(new_con_state, &hdr_infopacket);
		if (ret)
			return ret;

		new_crtc_state = FUNC2(state, crtc);
		if (FUNC0(new_crtc_state))
			return FUNC1(new_crtc_state);

		/*
		 * DC considers the stream backends changed if the
		 * static metadata changes. Forcing the modeset also
		 * gives a simple way for userspace to switch from
		 * 8bpc to 10bpc when setting the metadata to enter
		 * or exit HDR.
		 *
		 * Changing the static metadata after it's been
		 * set is permissible, however. So only force a
		 * modeset if we're entering or exiting HDR.
		 */
		new_crtc_state->mode_changed =
			!old_con_state->hdr_output_metadata ||
			!new_con_state->hdr_output_metadata;
	}

	return 0;
}