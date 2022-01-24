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
struct intel_plane {int pipe; int /*<<< orphan*/  base; scalar_t__ id; int /*<<< orphan*/  frontbuffer_bit; void* check_plane; int /*<<< orphan*/  get_hw_state; int /*<<< orphan*/  disable_plane; int /*<<< orphan*/  update_plane; void* max_stride; } ;
struct drm_plane_funcs {int dummy; } ;
struct drm_i915_private {int /*<<< orphan*/  drm; } ;
typedef  enum pipe { ____Placeholder_pipe } pipe ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 unsigned long FUNC1 (int) ; 
 int DRM_COLOR_YCBCR_BT601 ; 
 int DRM_COLOR_YCBCR_BT709 ; 
 int DRM_COLOR_YCBCR_FULL_RANGE ; 
 int DRM_COLOR_YCBCR_LIMITED_RANGE ; 
 unsigned int DRM_MODE_REFLECT_X ; 
 unsigned int DRM_MODE_ROTATE_0 ; 
 unsigned int DRM_MODE_ROTATE_180 ; 
 int /*<<< orphan*/  DRM_PLANE_TYPE_OVERLAY ; 
 struct intel_plane* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 
 int FUNC4 (struct drm_i915_private*) ; 
 scalar_t__ FUNC5 (struct drm_i915_private*) ; 
 scalar_t__ FUNC6 (struct intel_plane*) ; 
 scalar_t__ FUNC7 (struct drm_i915_private*,int) ; 
 scalar_t__ FUNC8 (struct drm_i915_private*) ; 
 int PIPE_B ; 
 scalar_t__ PLANE_SPRITE0 ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long,unsigned long,int,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned long,struct drm_plane_funcs const*,int /*<<< orphan*/  const*,int,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g4x_disable_plane ; 
 int /*<<< orphan*/ * g4x_plane_formats ; 
 int /*<<< orphan*/  g4x_plane_get_hw_state ; 
 void* g4x_sprite_check ; 
 struct drm_plane_funcs g4x_sprite_funcs ; 
 void* g4x_sprite_max_stride ; 
 int /*<<< orphan*/  g4x_update_plane ; 
 int /*<<< orphan*/ * i9xx_plane_format_modifiers ; 
 void* i9xx_plane_max_stride ; 
 struct intel_plane* FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (struct intel_plane*) ; 
 int /*<<< orphan*/  intel_plane_helper_funcs ; 
 int /*<<< orphan*/  ivb_disable_plane ; 
 int /*<<< orphan*/  ivb_plane_get_hw_state ; 
 int /*<<< orphan*/  ivb_update_plane ; 
 struct intel_plane* FUNC15 (struct drm_i915_private*,int,scalar_t__) ; 
 int /*<<< orphan*/ * snb_plane_formats ; 
 struct drm_plane_funcs snb_sprite_funcs ; 
 int /*<<< orphan*/  FUNC16 (int,int) ; 
 int /*<<< orphan*/  vlv_disable_plane ; 
 int /*<<< orphan*/ * vlv_plane_formats ; 
 int /*<<< orphan*/  vlv_plane_get_hw_state ; 
 void* vlv_sprite_check ; 
 struct drm_plane_funcs vlv_sprite_funcs ; 
 int /*<<< orphan*/  vlv_update_plane ; 

struct intel_plane *
FUNC17(struct drm_i915_private *dev_priv,
			  enum pipe pipe, int sprite)
{
	struct intel_plane *plane;
	const struct drm_plane_funcs *plane_funcs;
	unsigned long possible_crtcs;
	unsigned int supported_rotations;
	const u64 *modifiers;
	const u32 *formats;
	int num_formats;
	int ret;

	if (FUNC4(dev_priv) >= 9)
		return FUNC15(dev_priv, pipe,
						  PLANE_SPRITE0 + sprite);

	plane = FUNC13();
	if (FUNC6(plane))
		return plane;

	if (FUNC8(dev_priv) || FUNC5(dev_priv)) {
		plane->max_stride = i9xx_plane_max_stride;
		plane->update_plane = vlv_update_plane;
		plane->disable_plane = vlv_disable_plane;
		plane->get_hw_state = vlv_plane_get_hw_state;
		plane->check_plane = vlv_sprite_check;

		formats = vlv_plane_formats;
		num_formats = FUNC0(vlv_plane_formats);
		modifiers = i9xx_plane_format_modifiers;

		plane_funcs = &vlv_sprite_funcs;
	} else if (FUNC4(dev_priv) >= 7) {
		plane->max_stride = g4x_sprite_max_stride;
		plane->update_plane = ivb_update_plane;
		plane->disable_plane = ivb_disable_plane;
		plane->get_hw_state = ivb_plane_get_hw_state;
		plane->check_plane = g4x_sprite_check;

		formats = snb_plane_formats;
		num_formats = FUNC0(snb_plane_formats);
		modifiers = i9xx_plane_format_modifiers;

		plane_funcs = &snb_sprite_funcs;
	} else {
		plane->max_stride = g4x_sprite_max_stride;
		plane->update_plane = g4x_update_plane;
		plane->disable_plane = g4x_disable_plane;
		plane->get_hw_state = g4x_plane_get_hw_state;
		plane->check_plane = g4x_sprite_check;

		modifiers = i9xx_plane_format_modifiers;
		if (FUNC7(dev_priv, 6)) {
			formats = snb_plane_formats;
			num_formats = FUNC0(snb_plane_formats);

			plane_funcs = &snb_sprite_funcs;
		} else {
			formats = g4x_plane_formats;
			num_formats = FUNC0(g4x_plane_formats);

			plane_funcs = &g4x_sprite_funcs;
		}
	}

	if (FUNC5(dev_priv) && pipe == PIPE_B) {
		supported_rotations =
			DRM_MODE_ROTATE_0 | DRM_MODE_ROTATE_180 |
			DRM_MODE_REFLECT_X;
	} else {
		supported_rotations =
			DRM_MODE_ROTATE_0 | DRM_MODE_ROTATE_180;
	}

	plane->pipe = pipe;
	plane->id = PLANE_SPRITE0 + sprite;
	plane->frontbuffer_bit = FUNC3(pipe, plane->id);

	possible_crtcs = FUNC1(pipe);

	ret = FUNC12(&dev_priv->drm, &plane->base,
				       possible_crtcs, plane_funcs,
				       formats, num_formats, modifiers,
				       DRM_PLANE_TYPE_OVERLAY,
				       "sprite %c", FUNC16(pipe, sprite));
	if (ret)
		goto fail;

	FUNC10(&plane->base,
					   DRM_MODE_ROTATE_0,
					   supported_rotations);

	FUNC9(&plane->base,
					  FUNC1(DRM_COLOR_YCBCR_BT601) |
					  FUNC1(DRM_COLOR_YCBCR_BT709),
					  FUNC1(DRM_COLOR_YCBCR_LIMITED_RANGE) |
					  FUNC1(DRM_COLOR_YCBCR_FULL_RANGE),
					  DRM_COLOR_YCBCR_BT709,
					  DRM_COLOR_YCBCR_LIMITED_RANGE);

	FUNC11(&plane->base, &intel_plane_helper_funcs);

	return plane;

fail:
	FUNC14(plane);

	return FUNC2(ret);
}