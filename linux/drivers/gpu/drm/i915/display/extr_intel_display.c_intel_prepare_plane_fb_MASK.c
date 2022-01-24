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
struct intel_crtc_state {int dummy; } ;
struct intel_atomic_state {int rps_interactive; int /*<<< orphan*/  commit_ready; } ;
struct drm_plane_state {struct dma_fence* fence; int /*<<< orphan*/  crtc; struct drm_framebuffer* fb; int /*<<< orphan*/  state; } ;
struct drm_plane {TYPE_1__* state; int /*<<< orphan*/  dev; } ;
struct TYPE_5__ {int /*<<< orphan*/  struct_mutex; } ;
struct drm_i915_private {TYPE_2__ drm; } ;
struct TYPE_6__ {int /*<<< orphan*/  resv; } ;
struct drm_i915_gem_object {TYPE_3__ base; int /*<<< orphan*/  frontbuffer; } ;
struct drm_framebuffer {int dummy; } ;
struct dma_fence {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  crtc; struct drm_framebuffer* fb; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  I915_FENCE_TIMEOUT ; 
 int /*<<< orphan*/  ORIGIN_DIRTYFB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct dma_fence*) ; 
 int /*<<< orphan*/  FUNC1 (struct dma_fence*) ; 
 struct dma_fence* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_i915_gem_object*) ; 
 int FUNC4 (struct drm_i915_gem_object*) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_i915_gem_object*) ; 
 int FUNC6 (int /*<<< orphan*/ *,struct dma_fence*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct intel_crtc_state* FUNC8 (struct intel_atomic_state*,int /*<<< orphan*/ ) ; 
 struct drm_i915_gem_object* FUNC9 (struct drm_framebuffer*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct drm_i915_private*,int) ; 
 int FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (struct intel_crtc_state*) ; 
 struct drm_i915_private* FUNC16 (int /*<<< orphan*/ ) ; 
 struct intel_atomic_state* FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct drm_plane_state*) ; 

int
FUNC20(struct drm_plane *plane,
		       struct drm_plane_state *new_state)
{
	struct intel_atomic_state *intel_state =
		FUNC17(new_state->state);
	struct drm_i915_private *dev_priv = FUNC16(plane->dev);
	struct drm_framebuffer *fb = new_state->fb;
	struct drm_i915_gem_object *obj = FUNC9(fb);
	struct drm_i915_gem_object *old_obj = FUNC9(plane->state->fb);
	int ret;

	if (old_obj) {
		struct intel_crtc_state *crtc_state =
			FUNC8(intel_state,
							FUNC18(plane->state->crtc));

		/* Big Hammer, we also need to ensure that any pending
		 * MI_WAIT_FOR_EVENT inside a user batch buffer on the
		 * current scanout is retired before unpinning the old
		 * framebuffer. Note that we rely on userspace rendering
		 * into the buffer attached to the pipe they are waiting
		 * on. If not, userspace generates a GPU hang with IPEHR
		 * point to the MI_WAIT_FOR_EVENT.
		 *
		 * This should only fail upon a hung GPU, in which case we
		 * can safely continue.
		 */
		if (FUNC15(crtc_state)) {
			ret = FUNC7(&intel_state->commit_ready,
							      old_obj->base.resv, NULL,
							      false, 0,
							      GFP_KERNEL);
			if (ret < 0)
				return ret;
		}
	}

	if (new_state->fence) { /* explicit fencing */
		ret = FUNC6(&intel_state->commit_ready,
						    new_state->fence,
						    I915_FENCE_TIMEOUT,
						    GFP_KERNEL);
		if (ret < 0)
			return ret;
	}

	if (!obj)
		return 0;

	ret = FUNC4(obj);
	if (ret)
		return ret;

	ret = FUNC13(&dev_priv->drm.struct_mutex);
	if (ret) {
		FUNC5(obj);
		return ret;
	}

	ret = FUNC11(FUNC19(new_state));

	FUNC14(&dev_priv->drm.struct_mutex);
	FUNC5(obj);
	if (ret)
		return ret;

	FUNC3(obj);
	FUNC10(obj->frontbuffer, ORIGIN_DIRTYFB);

	if (!new_state->fence) { /* implicit fencing */
		struct dma_fence *fence;

		ret = FUNC7(&intel_state->commit_ready,
						      obj->base.resv, NULL,
						      false, I915_FENCE_TIMEOUT,
						      GFP_KERNEL);
		if (ret < 0)
			return ret;

		fence = FUNC2(obj->base.resv);
		if (fence) {
			FUNC0(new_state->crtc, fence);
			FUNC1(fence);
		}
	} else {
		FUNC0(new_state->crtc, new_state->fence);
	}

	/*
	 * We declare pageflips to be interactive and so merit a small bias
	 * towards upclocking to deliver the frame on time. By only changing
	 * the RPS thresholds to sample more regularly and aim for higher
	 * clocks we can hopefully deliver low power workloads (like kodi)
	 * that are not quite steady state without resorting to forcing
	 * maximum clocks following a vblank miss (see do_rps_boost()).
	 */
	if (!intel_state->rps_interactive) {
		FUNC12(dev_priv, true);
		intel_state->rps_interactive = true;
	}

	return 0;
}