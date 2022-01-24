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
struct intel_plane {int pipe; int id; int /*<<< orphan*/  base; scalar_t__ has_ccs; int /*<<< orphan*/  update_slave; int /*<<< orphan*/  check_plane; int /*<<< orphan*/  get_hw_state; int /*<<< orphan*/  disable_plane; int /*<<< orphan*/  update_plane; int /*<<< orphan*/  max_stride; int /*<<< orphan*/  frontbuffer_bit; scalar_t__ has_fbc; } ;
struct intel_fbc {int /*<<< orphan*/  possible_framebuffer_bits; } ;
struct drm_i915_private {int /*<<< orphan*/  drm; struct intel_fbc fbc; } ;
typedef  enum plane_id { ____Placeholder_plane_id } plane_id ;
typedef  enum pipe { ____Placeholder_pipe } pipe ;
typedef  enum drm_plane_type { ____Placeholder_drm_plane_type } drm_plane_type ;

/* Variables and functions */
 unsigned int FUNC0 (int) ; 
 int DRM_COLOR_YCBCR_BT601 ; 
 int DRM_COLOR_YCBCR_BT709 ; 
 int DRM_COLOR_YCBCR_FULL_RANGE ; 
 int DRM_COLOR_YCBCR_LIMITED_RANGE ; 
 int DRM_MODE_BLEND_COVERAGE ; 
 int DRM_MODE_BLEND_PIXEL_NONE ; 
 int DRM_MODE_BLEND_PREMULTI ; 
 unsigned int DRM_MODE_REFLECT_X ; 
 unsigned int DRM_MODE_ROTATE_0 ; 
 unsigned int DRM_MODE_ROTATE_180 ; 
 unsigned int DRM_MODE_ROTATE_270 ; 
 unsigned int DRM_MODE_ROTATE_90 ; 
 int DRM_PLANE_TYPE_OVERLAY ; 
 int DRM_PLANE_TYPE_PRIMARY ; 
 struct intel_plane* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int FUNC3 (struct drm_i915_private*) ; 
 scalar_t__ FUNC4 (struct intel_plane*) ; 
 scalar_t__ FUNC5 (struct drm_i915_private*) ; 
 int PLANE_PRIMARY ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned int,unsigned int,int,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int,int /*<<< orphan*/  const*,int,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC12 (struct drm_i915_private*,int,int,int*) ; 
 int /*<<< orphan*/ * FUNC13 (struct drm_i915_private*,int,int,int*) ; 
 scalar_t__ FUNC14 (int) ; 
 int /*<<< orphan*/  icl_update_slave ; 
 struct intel_plane* FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (struct intel_plane*) ; 
 int /*<<< orphan*/  intel_plane_helper_funcs ; 
 int /*<<< orphan*/  FUNC17 (int) ; 
 int /*<<< orphan*/  skl_disable_plane ; 
 int /*<<< orphan*/ * FUNC18 (struct drm_i915_private*,int,int,int*) ; 
 int /*<<< orphan*/  skl_plane_check ; 
 int /*<<< orphan*/ * skl_plane_format_modifiers_ccs ; 
 int /*<<< orphan*/ * skl_plane_format_modifiers_noccs ; 
 int /*<<< orphan*/  skl_plane_funcs ; 
 int /*<<< orphan*/  skl_plane_get_hw_state ; 
 scalar_t__ FUNC19 (struct drm_i915_private*,int,int) ; 
 scalar_t__ FUNC20 (struct drm_i915_private*,int,int) ; 
 int /*<<< orphan*/  skl_plane_max_stride ; 
 int /*<<< orphan*/  skl_update_plane ; 

struct intel_plane *
FUNC21(struct drm_i915_private *dev_priv,
			   enum pipe pipe, enum plane_id plane_id)
{
	struct intel_plane *plane;
	enum drm_plane_type plane_type;
	unsigned int supported_rotations;
	unsigned int possible_crtcs;
	const u64 *modifiers;
	const u32 *formats;
	int num_formats;
	int ret;

	plane = FUNC15();
	if (FUNC4(plane))
		return plane;

	plane->pipe = pipe;
	plane->id = plane_id;
	plane->frontbuffer_bit = FUNC2(pipe, plane_id);

	plane->has_fbc = FUNC20(dev_priv, pipe, plane_id);
	if (plane->has_fbc) {
		struct intel_fbc *fbc = &dev_priv->fbc;

		fbc->possible_framebuffer_bits |= plane->frontbuffer_bit;
	}

	plane->max_stride = skl_plane_max_stride;
	plane->update_plane = skl_update_plane;
	plane->disable_plane = skl_disable_plane;
	plane->get_hw_state = skl_plane_get_hw_state;
	plane->check_plane = skl_plane_check;
	if (FUNC14(plane_id))
		plane->update_slave = icl_update_slave;

	if (FUNC3(dev_priv) >= 11)
		formats = FUNC13(dev_priv, pipe,
						plane_id, &num_formats);
	else if (FUNC3(dev_priv) >= 10 || FUNC5(dev_priv))
		formats = FUNC12(dev_priv, pipe,
						plane_id, &num_formats);
	else
		formats = FUNC18(dev_priv, pipe,
						plane_id, &num_formats);

	plane->has_ccs = FUNC19(dev_priv, pipe, plane_id);
	if (plane->has_ccs)
		modifiers = skl_plane_format_modifiers_ccs;
	else
		modifiers = skl_plane_format_modifiers_noccs;

	if (plane_id == PLANE_PRIMARY)
		plane_type = DRM_PLANE_TYPE_PRIMARY;
	else
		plane_type = DRM_PLANE_TYPE_OVERLAY;

	possible_crtcs = FUNC0(pipe);

	ret = FUNC11(&dev_priv->drm, &plane->base,
				       possible_crtcs, &skl_plane_funcs,
				       formats, num_formats, modifiers,
				       plane_type,
				       "plane %d%c", plane_id + 1,
				       FUNC17(pipe));
	if (ret)
		goto fail;

	supported_rotations =
		DRM_MODE_ROTATE_0 | DRM_MODE_ROTATE_90 |
		DRM_MODE_ROTATE_180 | DRM_MODE_ROTATE_270;

	if (FUNC3(dev_priv) >= 10)
		supported_rotations |= DRM_MODE_REFLECT_X;

	FUNC9(&plane->base,
					   DRM_MODE_ROTATE_0,
					   supported_rotations);

	FUNC8(&plane->base,
					  FUNC0(DRM_COLOR_YCBCR_BT601) |
					  FUNC0(DRM_COLOR_YCBCR_BT709),
					  FUNC0(DRM_COLOR_YCBCR_LIMITED_RANGE) |
					  FUNC0(DRM_COLOR_YCBCR_FULL_RANGE),
					  DRM_COLOR_YCBCR_BT709,
					  DRM_COLOR_YCBCR_LIMITED_RANGE);

	FUNC6(&plane->base);
	FUNC7(&plane->base,
					     FUNC0(DRM_MODE_BLEND_PIXEL_NONE) |
					     FUNC0(DRM_MODE_BLEND_PREMULTI) |
					     FUNC0(DRM_MODE_BLEND_COVERAGE));

	FUNC10(&plane->base, &intel_plane_helper_funcs);

	return plane;

fail:
	FUNC16(plane);

	return FUNC1(ret);
}