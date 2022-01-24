#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct intel_plane {int /*<<< orphan*/  frontbuffer_bit; } ;
struct TYPE_6__ {int /*<<< orphan*/  active; } ;
struct intel_crtc_state {TYPE_3__ base; int /*<<< orphan*/  active_planes; scalar_t__ update_pipe; } ;
struct drm_plane_state {scalar_t__ src_w; scalar_t__ src_h; unsigned int crtc_w; unsigned int crtc_h; int crtc_x; int crtc_y; scalar_t__ visible; struct drm_framebuffer* fb; scalar_t__ src_y; scalar_t__ src_x; struct drm_crtc* crtc; TYPE_1__* commit; } ;
struct drm_plane {struct drm_plane_state* state; } ;
struct drm_modeset_acquire_ctx {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  struct_mutex; } ;
struct drm_i915_private {TYPE_2__ drm; } ;
struct drm_framebuffer {int dummy; } ;
struct drm_crtc {int /*<<< orphan*/  state; int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  hw_done; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  ORIGIN_FLIP ; 
 int FUNC0 (struct drm_plane*,struct drm_crtc*,struct drm_framebuffer*,int,int,unsigned int,unsigned int,scalar_t__,scalar_t__,scalar_t__,scalar_t__,struct drm_modeset_acquire_ctx*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_plane_state*,struct drm_framebuffer*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_crtc*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC4 (struct intel_plane*,struct intel_crtc_state*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct intel_crtc_state*,struct intel_crtc_state*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_plane*,struct drm_plane_state*) ; 
 struct drm_plane_state* FUNC9 (struct drm_plane*) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct intel_plane*,struct intel_crtc_state*,int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (struct intel_crtc_state*) ; 
 struct drm_i915_private* FUNC16 (int /*<<< orphan*/ ) ; 
 struct intel_crtc_state* FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct drm_framebuffer*) ; 
 struct intel_plane* FUNC19 (struct drm_plane*) ; 
 int /*<<< orphan*/  FUNC20 (struct drm_plane_state*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC22(struct drm_plane *plane,
			   struct drm_crtc *crtc,
			   struct drm_framebuffer *fb,
			   int crtc_x, int crtc_y,
			   unsigned int crtc_w, unsigned int crtc_h,
			   u32 src_x, u32 src_y,
			   u32 src_w, u32 src_h,
			   struct drm_modeset_acquire_ctx *ctx)
{
	struct drm_i915_private *dev_priv = FUNC16(crtc->dev);
	struct drm_plane_state *old_plane_state, *new_plane_state;
	struct intel_plane *intel_plane = FUNC19(plane);
	struct intel_crtc_state *crtc_state =
		FUNC17(crtc->state);
	struct intel_crtc_state *new_crtc_state;
	int ret;

	/*
	 * When crtc is inactive or there is a modeset pending,
	 * wait for it to complete in the slowpath
	 */
	if (!crtc_state->base.active || FUNC15(crtc_state) ||
	    crtc_state->update_pipe)
		goto slow;

	old_plane_state = plane->state;
	/*
	 * Don't do an async update if there is an outstanding commit modifying
	 * the plane.  This prevents our async update's changes from getting
	 * overridden by a previous synchronous update's state.
	 */
	if (old_plane_state->commit &&
	    !FUNC21(&old_plane_state->commit->hw_done))
		goto slow;

	/*
	 * If any parameters change that may affect watermarks,
	 * take the slowpath. Only changing fb or position should be
	 * in the fastpath.
	 */
	if (old_plane_state->crtc != crtc ||
	    old_plane_state->src_w != src_w ||
	    old_plane_state->src_h != src_h ||
	    old_plane_state->crtc_w != crtc_w ||
	    old_plane_state->crtc_h != crtc_h ||
	    !old_plane_state->fb != !fb)
		goto slow;

	new_plane_state = FUNC9(plane);
	if (!new_plane_state)
		return -ENOMEM;

	new_crtc_state = FUNC17(FUNC3(crtc));
	if (!new_crtc_state) {
		ret = -ENOMEM;
		goto out_free;
	}

	FUNC1(new_plane_state, fb);

	new_plane_state->src_x = src_x;
	new_plane_state->src_y = src_y;
	new_plane_state->src_w = src_w;
	new_plane_state->src_h = src_h;
	new_plane_state->crtc_x = crtc_x;
	new_plane_state->crtc_y = crtc_y;
	new_plane_state->crtc_w = crtc_w;
	new_plane_state->crtc_h = crtc_h;

	ret = FUNC7(crtc_state, new_crtc_state,
						  FUNC20(old_plane_state),
						  FUNC20(new_plane_state));
	if (ret)
		goto out_free;

	ret = FUNC13(&dev_priv->drm.struct_mutex);
	if (ret)
		goto out_free;

	ret = FUNC10(FUNC20(new_plane_state));
	if (ret)
		goto out_unlock;

	FUNC5(FUNC18(fb), ORIGIN_FLIP);
	FUNC6(FUNC18(old_plane_state->fb),
				FUNC18(fb),
				intel_plane->frontbuffer_bit);

	/* Swap plane state */
	plane->state = new_plane_state;

	/*
	 * We cannot swap crtc_state as it may be in use by an atomic commit or
	 * page flip that's running simultaneously. If we swap crtc_state and
	 * destroy the old state, we will cause a use-after-free there.
	 *
	 * Only update active_planes, which is needed for our internal
	 * bookkeeping. Either value will do the right thing when updating
	 * planes atomically. If the cursor was part of the atomic update then
	 * we would have taken the slowpath.
	 */
	crtc_state->active_planes = new_crtc_state->active_planes;

	if (plane->state->visible)
		FUNC12(intel_plane, crtc_state,
				   FUNC20(plane->state));
	else
		FUNC4(intel_plane, crtc_state);

	FUNC11(FUNC20(old_plane_state));

out_unlock:
	FUNC14(&dev_priv->drm.struct_mutex);
out_free:
	if (new_crtc_state)
		FUNC2(crtc, &new_crtc_state->base);
	if (ret)
		FUNC8(plane, new_plane_state);
	else
		FUNC8(plane, old_plane_state);
	return ret;

slow:
	return FUNC0(plane, crtc, fb,
					      crtc_x, crtc_y, crtc_w, crtc_h,
					      src_x, src_y, src_w, src_h, ctx);
}