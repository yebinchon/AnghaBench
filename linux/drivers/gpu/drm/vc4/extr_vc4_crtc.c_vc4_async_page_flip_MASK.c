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
typedef  int /*<<< orphan*/  uint32_t ;
struct vc4_dev {int /*<<< orphan*/  async_modeset; } ;
struct vc4_bo {int /*<<< orphan*/  seqno; } ;
struct vc4_async_flip_state {int /*<<< orphan*/  cb; struct drm_framebuffer* old_fb; struct drm_pending_vblank_event* event; struct drm_crtc* crtc; struct drm_framebuffer* fb; } ;
struct drm_plane {TYPE_1__* state; } ;
struct drm_pending_vblank_event {int dummy; } ;
struct drm_gem_cma_object {int /*<<< orphan*/  base; } ;
struct drm_framebuffer {int dummy; } ;
struct drm_device {int dummy; } ;
struct drm_crtc {struct drm_plane* primary; struct drm_device* dev; } ;
struct TYPE_2__ {struct drm_framebuffer* fb; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,struct drm_framebuffer*) ; 
 scalar_t__ FUNC3 (struct drm_crtc*) ; 
 struct drm_gem_cma_object* FUNC4 (struct drm_framebuffer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_framebuffer*) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_framebuffer*) ; 
 int /*<<< orphan*/  FUNC7 (struct vc4_async_flip_state*) ; 
 struct vc4_async_flip_state* FUNC8 (int,int /*<<< orphan*/ ) ; 
 struct vc4_bo* FUNC9 (int /*<<< orphan*/ *) ; 
 struct vc4_dev* FUNC10 (struct drm_device*) ; 
 int /*<<< orphan*/  vc4_async_page_flip_complete ; 
 int /*<<< orphan*/  FUNC11 (struct vc4_bo*) ; 
 int FUNC12 (struct vc4_bo*) ; 
 int /*<<< orphan*/  FUNC13 (struct drm_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC14(struct drm_crtc *crtc,
			       struct drm_framebuffer *fb,
			       struct drm_pending_vblank_event *event,
			       uint32_t flags)
{
	struct drm_device *dev = crtc->dev;
	struct vc4_dev *vc4 = FUNC10(dev);
	struct drm_plane *plane = crtc->primary;
	int ret = 0;
	struct vc4_async_flip_state *flip_state;
	struct drm_gem_cma_object *cma_bo = FUNC4(fb, 0);
	struct vc4_bo *bo = FUNC9(&cma_bo->base);

	/* Increment the BO usecnt here, so that we never end up with an
	 * unbalanced number of vc4_bo_{dec,inc}_usecnt() calls when the
	 * plane is later updated through the non-async path.
	 * FIXME: we should move to generic async-page-flip when it's
	 * available, so that we can get rid of this hand-made prepare_fb()
	 * logic.
	 */
	ret = FUNC12(bo);
	if (ret)
		return ret;

	flip_state = FUNC8(sizeof(*flip_state), GFP_KERNEL);
	if (!flip_state) {
		FUNC11(bo);
		return -ENOMEM;
	}

	FUNC5(fb);
	flip_state->fb = fb;
	flip_state->crtc = crtc;
	flip_state->event = event;

	/* Make sure all other async modesetes have landed. */
	ret = FUNC1(&vc4->async_modeset);
	if (ret) {
		FUNC6(fb);
		FUNC11(bo);
		FUNC7(flip_state);
		return ret;
	}

	/* Save the current FB before it's replaced by the new one in
	 * drm_atomic_set_fb_for_plane(). We'll need the old FB in
	 * vc4_async_page_flip_complete() to decrement the BO usecnt and keep
	 * it consistent.
	 * FIXME: we should move to generic async-page-flip when it's
	 * available, so that we can get rid of this hand-made cleanup_fb()
	 * logic.
	 */
	flip_state->old_fb = plane->state->fb;
	if (flip_state->old_fb)
		FUNC5(flip_state->old_fb);

	FUNC0(FUNC3(crtc) != 0);

	/* Immediately update the plane's legacy fb pointer, so that later
	 * modeset prep sees the state that will be present when the semaphore
	 * is released.
	 */
	FUNC2(plane->state, fb);

	FUNC13(dev, &flip_state->cb, bo->seqno,
			   vc4_async_page_flip_complete);

	/* Driver takes ownership of state on successful async commit. */
	return 0;
}