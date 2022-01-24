#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {struct drm_plane* primary; } ;
struct intel_crtc {TYPE_1__ base; } ;
struct drm_plane_state {int dummy; } ;
struct drm_plane {scalar_t__ type; int /*<<< orphan*/  dev; } ;
struct drm_modeset_acquire_ctx {int dummy; } ;
struct drm_intel_sprite_colorkey {int flags; int /*<<< orphan*/  plane_id; } ;
struct drm_i915_private {int dummy; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;
struct drm_atomic_state {struct drm_modeset_acquire_ctx* acquire_ctx; } ;
struct TYPE_4__ {scalar_t__ id; int /*<<< orphan*/  pipe; } ;

/* Variables and functions */
 scalar_t__ DRM_PLANE_TYPE_OVERLAY ; 
 int EDEADLK ; 
 int EINVAL ; 
 int ENOENT ; 
 int ENOMEM ; 
 int I915_SET_COLORKEY_DESTINATION ; 
 int I915_SET_COLORKEY_NONE ; 
 int I915_SET_COLORKEY_SOURCE ; 
 int FUNC0 (struct drm_i915_private*) ; 
 scalar_t__ FUNC1 (struct drm_i915_private*) ; 
 scalar_t__ FUNC2 (struct drm_i915_private*) ; 
 scalar_t__ PLANE_SPRITE1 ; 
 int FUNC3 (struct drm_plane_state*) ; 
 int FUNC4 (struct drm_atomic_state*) ; 
 struct drm_plane_state* FUNC5 (struct drm_atomic_state*,struct drm_plane*) ; 
 struct drm_atomic_state* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_atomic_state*) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_atomic_state*) ; 
 int /*<<< orphan*/  FUNC9 (struct drm_modeset_acquire_ctx*) ; 
 int /*<<< orphan*/  FUNC10 (struct drm_modeset_acquire_ctx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct drm_modeset_acquire_ctx*) ; 
 int /*<<< orphan*/  FUNC12 (struct drm_modeset_acquire_ctx*) ; 
 struct drm_plane* FUNC13 (struct drm_device*,struct drm_file*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (struct drm_i915_private*) ; 
 struct intel_crtc* FUNC15 (struct drm_i915_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,struct drm_intel_sprite_colorkey*) ; 
 struct drm_i915_private* FUNC17 (struct drm_device*) ; 
 TYPE_2__* FUNC18 (struct drm_plane*) ; 
 int /*<<< orphan*/  FUNC19 (struct drm_plane_state*) ; 

int FUNC20(struct drm_device *dev, void *data,
				    struct drm_file *file_priv)
{
	struct drm_i915_private *dev_priv = FUNC17(dev);
	struct drm_intel_sprite_colorkey *set = data;
	struct drm_plane *plane;
	struct drm_plane_state *plane_state;
	struct drm_atomic_state *state;
	struct drm_modeset_acquire_ctx ctx;
	int ret = 0;

	/* ignore the pointless "none" flag */
	set->flags &= ~I915_SET_COLORKEY_NONE;

	if (set->flags & ~(I915_SET_COLORKEY_DESTINATION | I915_SET_COLORKEY_SOURCE))
		return -EINVAL;

	/* Make sure we don't try to enable both src & dest simultaneously */
	if ((set->flags & (I915_SET_COLORKEY_DESTINATION | I915_SET_COLORKEY_SOURCE)) == (I915_SET_COLORKEY_DESTINATION | I915_SET_COLORKEY_SOURCE))
		return -EINVAL;

	if ((FUNC2(dev_priv) || FUNC1(dev_priv)) &&
	    set->flags & I915_SET_COLORKEY_DESTINATION)
		return -EINVAL;

	plane = FUNC13(dev, file_priv, set->plane_id);
	if (!plane || plane->type != DRM_PLANE_TYPE_OVERLAY)
		return -ENOENT;

	/*
	 * SKL+ only plane 2 can do destination keying against plane 1.
	 * Also multiple planes can't do destination keying on the same
	 * pipe simultaneously.
	 */
	if (FUNC0(dev_priv) >= 9 &&
	    FUNC18(plane)->id >= PLANE_SPRITE1 &&
	    set->flags & I915_SET_COLORKEY_DESTINATION)
		return -EINVAL;

	FUNC10(&ctx, 0);

	state = FUNC6(plane->dev);
	if (!state) {
		ret = -ENOMEM;
		goto out;
	}
	state->acquire_ctx = &ctx;

	while (1) {
		plane_state = FUNC5(state, plane);
		ret = FUNC3(plane_state);
		if (!ret)
			FUNC16(FUNC19(plane_state), set);

		/*
		 * On some platforms we have to configure
		 * the dst colorkey on the primary plane.
		 */
		if (!ret && FUNC14(dev_priv)) {
			struct intel_crtc *crtc =
				FUNC15(dev_priv,
							FUNC18(plane)->pipe);

			plane_state = FUNC5(state,
								 crtc->base.primary);
			ret = FUNC3(plane_state);
			if (!ret)
				FUNC16(FUNC19(plane_state), set);
		}

		if (!ret)
			ret = FUNC4(state);

		if (ret != -EDEADLK)
			break;

		FUNC7(state);
		FUNC11(&ctx);
	}

	FUNC8(state);
out:
	FUNC12(&ctx);
	FUNC9(&ctx);
	return ret;
}