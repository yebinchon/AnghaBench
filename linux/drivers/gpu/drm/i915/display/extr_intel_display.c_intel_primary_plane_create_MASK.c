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
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct intel_plane {int pipe; int i9xx_plane; int /*<<< orphan*/  base; void* check_plane; void* get_hw_state; void* disable_plane; void* update_plane; void* max_stride; int /*<<< orphan*/  frontbuffer_bit; scalar_t__ has_fbc; int /*<<< orphan*/  id; } ;
struct intel_fbc {int /*<<< orphan*/  possible_framebuffer_bits; } ;
struct drm_plane_funcs {int dummy; } ;
struct drm_i915_private {int /*<<< orphan*/  drm; struct intel_fbc fbc; } ;
typedef  enum pipe { ____Placeholder_pipe } pipe ;
typedef  enum i9xx_plane_id { ____Placeholder_i9xx_plane_id } i9xx_plane_id ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC1 (int) ; 
 unsigned int DRM_MODE_REFLECT_X ; 
 unsigned int DRM_MODE_ROTATE_0 ; 
 unsigned int DRM_MODE_ROTATE_180 ; 
 int /*<<< orphan*/  DRM_PLANE_TYPE_PRIMARY ; 
 struct intel_plane* FUNC2 (int) ; 
 scalar_t__ FUNC3 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct drm_i915_private*) ; 
 scalar_t__ FUNC6 (struct drm_i915_private*) ; 
 scalar_t__ FUNC7 (struct intel_plane*) ; 
 scalar_t__ FUNC8 (struct drm_i915_private*) ; 
 int PIPE_B ; 
 int /*<<< orphan*/  PLANE_PRIMARY ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int,struct drm_plane_funcs const*,int /*<<< orphan*/  const*,int,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 struct drm_plane_funcs i8xx_plane_funcs ; 
 int /*<<< orphan*/ * i8xx_primary_formats ; 
 struct drm_plane_funcs i965_plane_funcs ; 
 int /*<<< orphan*/ * i965_primary_formats ; 
 void* i9xx_disable_plane ; 
 int /*<<< orphan*/ * i9xx_format_modifiers ; 
 void* i9xx_plane_check ; 
 void* i9xx_plane_get_hw_state ; 
 scalar_t__ FUNC12 (struct drm_i915_private*,int) ; 
 void* i9xx_plane_max_stride ; 
 void* i9xx_update_plane ; 
 struct intel_plane* FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (struct intel_plane*) ; 
 int /*<<< orphan*/  intel_plane_helper_funcs ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 int /*<<< orphan*/  FUNC16 (int) ; 
 struct intel_plane* FUNC17 (struct drm_i915_private*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct intel_plane *
FUNC18(struct drm_i915_private *dev_priv, enum pipe pipe)
{
	struct intel_plane *plane;
	const struct drm_plane_funcs *plane_funcs;
	unsigned int supported_rotations;
	unsigned int possible_crtcs;
	const u64 *modifiers;
	const u32 *formats;
	int num_formats;
	int ret;

	if (FUNC5(dev_priv) >= 9)
		return FUNC17(dev_priv, pipe,
						  PLANE_PRIMARY);

	plane = FUNC13();
	if (FUNC7(plane))
		return plane;

	plane->pipe = pipe;
	/*
	 * On gen2/3 only plane A can do FBC, but the panel fitter and LVDS
	 * port is hooked to pipe B. Hence we want plane A feeding pipe B.
	 */
	if (FUNC3(dev_priv) && FUNC5(dev_priv) < 4)
		plane->i9xx_plane = (enum i9xx_plane_id) !pipe;
	else
		plane->i9xx_plane = (enum i9xx_plane_id) pipe;
	plane->id = PLANE_PRIMARY;
	plane->frontbuffer_bit = FUNC4(pipe, plane->id);

	plane->has_fbc = FUNC12(dev_priv, plane->i9xx_plane);
	if (plane->has_fbc) {
		struct intel_fbc *fbc = &dev_priv->fbc;

		fbc->possible_framebuffer_bits |= plane->frontbuffer_bit;
	}

	if (FUNC5(dev_priv) >= 4) {
		formats = i965_primary_formats;
		num_formats = FUNC0(i965_primary_formats);
		modifiers = i9xx_format_modifiers;

		plane->max_stride = i9xx_plane_max_stride;
		plane->update_plane = i9xx_update_plane;
		plane->disable_plane = i9xx_disable_plane;
		plane->get_hw_state = i9xx_plane_get_hw_state;
		plane->check_plane = i9xx_plane_check;

		plane_funcs = &i965_plane_funcs;
	} else {
		formats = i8xx_primary_formats;
		num_formats = FUNC0(i8xx_primary_formats);
		modifiers = i9xx_format_modifiers;

		plane->max_stride = i9xx_plane_max_stride;
		plane->update_plane = i9xx_update_plane;
		plane->disable_plane = i9xx_disable_plane;
		plane->get_hw_state = i9xx_plane_get_hw_state;
		plane->check_plane = i9xx_plane_check;

		plane_funcs = &i8xx_plane_funcs;
	}

	possible_crtcs = FUNC1(pipe);

	if (FUNC5(dev_priv) >= 5 || FUNC8(dev_priv))
		ret = FUNC11(&dev_priv->drm, &plane->base,
					       possible_crtcs, plane_funcs,
					       formats, num_formats, modifiers,
					       DRM_PLANE_TYPE_PRIMARY,
					       "primary %c", FUNC15(pipe));
	else
		ret = FUNC11(&dev_priv->drm, &plane->base,
					       possible_crtcs, plane_funcs,
					       formats, num_formats, modifiers,
					       DRM_PLANE_TYPE_PRIMARY,
					       "plane %c",
					       FUNC16(plane->i9xx_plane));
	if (ret)
		goto fail;

	if (FUNC6(dev_priv) && pipe == PIPE_B) {
		supported_rotations =
			DRM_MODE_ROTATE_0 | DRM_MODE_ROTATE_180 |
			DRM_MODE_REFLECT_X;
	} else if (FUNC5(dev_priv) >= 4) {
		supported_rotations =
			DRM_MODE_ROTATE_0 | DRM_MODE_ROTATE_180;
	} else {
		supported_rotations = DRM_MODE_ROTATE_0;
	}

	if (FUNC5(dev_priv) >= 4)
		FUNC9(&plane->base,
						   DRM_MODE_ROTATE_0,
						   supported_rotations);

	FUNC10(&plane->base, &intel_plane_helper_funcs);

	return plane;

fail:
	FUNC14(plane);

	return FUNC2(ret);
}