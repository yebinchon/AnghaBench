#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct drm_plane_state {struct drm_crtc* crtc; } ;
struct TYPE_6__ {int /*<<< orphan*/  id; } ;
struct drm_plane {scalar_t__ type; TYPE_1__ base; int /*<<< orphan*/  state; } ;
struct drm_crtc_state {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  id; } ;
struct drm_crtc {TYPE_3__* dev; TYPE_2__ base; } ;
struct drm_atomic_state {int dummy; } ;
struct dm_plane_state {struct dc_plane_state* dc_state; } ;
struct dm_crtc_state {int /*<<< orphan*/  stream; } ;
struct dm_atomic_state {int /*<<< orphan*/  context; } ;
struct TYPE_9__ {int full_update; } ;
struct TYPE_10__ {TYPE_4__ bits; } ;
struct dc_plane_state {TYPE_5__ update_flags; } ;
struct dc {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  dev_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ DRM_PLANE_TYPE_CURSOR ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC2 (struct dc_plane_state*) ; 
 int /*<<< orphan*/  FUNC3 (struct dc*,int /*<<< orphan*/ ,struct dc_plane_state*,int /*<<< orphan*/ ) ; 
 struct dc_plane_state* FUNC4 (struct dc*) ; 
 int /*<<< orphan*/  FUNC5 (struct dc_plane_state*) ; 
 int /*<<< orphan*/  FUNC6 (struct dc*,int /*<<< orphan*/ ,struct dc_plane_state*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct drm_atomic_state*,struct dm_atomic_state**) ; 
 struct drm_crtc_state* FUNC8 (struct drm_atomic_state*,struct drm_crtc*) ; 
 struct drm_crtc_state* FUNC9 (struct drm_atomic_state*,struct drm_crtc*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,struct drm_plane_state*) ; 
 int FUNC11 (int /*<<< orphan*/ ,struct dc_plane_state*,struct drm_plane_state*,struct drm_crtc_state*) ; 
 int FUNC12 (struct drm_atomic_state*,struct drm_plane*,struct drm_plane_state*,struct drm_plane_state*) ; 
 struct dm_crtc_state* FUNC13 (struct drm_crtc_state*) ; 
 struct dm_plane_state* FUNC14 (struct drm_plane_state*) ; 

__attribute__((used)) static int FUNC15(struct dc *dc,
				 struct drm_atomic_state *state,
				 struct drm_plane *plane,
				 struct drm_plane_state *old_plane_state,
				 struct drm_plane_state *new_plane_state,
				 bool enable,
				 bool *lock_and_validation_needed)
{

	struct dm_atomic_state *dm_state = NULL;
	struct drm_crtc *new_plane_crtc, *old_plane_crtc;
	struct drm_crtc_state *old_crtc_state, *new_crtc_state;
	struct dm_crtc_state *dm_new_crtc_state, *dm_old_crtc_state;
	struct dm_plane_state *dm_new_plane_state, *dm_old_plane_state;
	bool needs_reset;
	int ret = 0;


	new_plane_crtc = new_plane_state->crtc;
	old_plane_crtc = old_plane_state->crtc;
	dm_new_plane_state = FUNC14(new_plane_state);
	dm_old_plane_state = FUNC14(old_plane_state);

	/*TODO Implement atomic check for cursor plane */
	if (plane->type == DRM_PLANE_TYPE_CURSOR)
		return 0;

	needs_reset = FUNC12(state, plane, old_plane_state,
					 new_plane_state);

	/* Remove any changed/removed planes */
	if (!enable) {
		if (!needs_reset)
			return 0;

		if (!old_plane_crtc)
			return 0;

		old_crtc_state = FUNC9(
				state, old_plane_crtc);
		dm_old_crtc_state = FUNC13(old_crtc_state);

		if (!dm_old_crtc_state->stream)
			return 0;

		FUNC0("Disabling DRM plane: %d on DRM crtc %d\n",
				plane->base.id, old_plane_crtc->base.id);

		ret = FUNC7(state, &dm_state);
		if (ret)
			return ret;

		if (!FUNC6(
				dc,
				dm_old_crtc_state->stream,
				dm_old_plane_state->dc_state,
				dm_state->context)) {

			ret = EINVAL;
			return ret;
		}


		FUNC5(dm_old_plane_state->dc_state);
		dm_new_plane_state->dc_state = NULL;

		*lock_and_validation_needed = true;

	} else { /* Add new planes */
		struct dc_plane_state *dc_new_plane_state;

		if (FUNC10(plane->state, new_plane_state))
			return 0;

		if (!new_plane_crtc)
			return 0;

		new_crtc_state = FUNC8(state, new_plane_crtc);
		dm_new_crtc_state = FUNC13(new_crtc_state);

		if (!dm_new_crtc_state->stream)
			return 0;

		if (!needs_reset)
			return 0;

		FUNC2(dm_new_plane_state->dc_state);

		dc_new_plane_state = FUNC4(dc);
		if (!dc_new_plane_state)
			return -ENOMEM;

		FUNC1("Enabling DRM plane: %d on DRM crtc %d\n",
				plane->base.id, new_plane_crtc->base.id);

		ret = FUNC11(
			new_plane_crtc->dev->dev_private,
			dc_new_plane_state,
			new_plane_state,
			new_crtc_state);
		if (ret) {
			FUNC5(dc_new_plane_state);
			return ret;
		}

		ret = FUNC7(state, &dm_state);
		if (ret) {
			FUNC5(dc_new_plane_state);
			return ret;
		}

		/*
		 * Any atomic check errors that occur after this will
		 * not need a release. The plane state will be attached
		 * to the stream, and therefore part of the atomic
		 * state. It'll be released when the atomic state is
		 * cleaned.
		 */
		if (!FUNC3(
				dc,
				dm_new_crtc_state->stream,
				dc_new_plane_state,
				dm_state->context)) {

			FUNC5(dc_new_plane_state);
			return -EINVAL;
		}

		dm_new_plane_state->dc_state = dc_new_plane_state;

		/* Tell DC to do a full surface update every time there
		 * is a plane change. Inefficient, but works for now.
		 */
		dm_new_plane_state->dc_state->update_flags.bits.full_update = 1;

		*lock_and_validation_needed = true;
	}


	return ret;
}