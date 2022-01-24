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
typedef  scalar_t__ u64 ;
typedef  scalar_t__ u32 ;
struct skl_wm_params {int y_tiled; int x_tiled; int rc_surface; int width; int cpp; int dbuf_block_size; int y_min_scanlines; int plane_bytes_per_line; int /*<<< orphan*/  linetime_us; void* plane_blocks_per_line; int /*<<< orphan*/  y_tile_minimum; scalar_t__ plane_pixel_rate; scalar_t__ is_planar; } ;
struct TYPE_3__ {int /*<<< orphan*/  crtc; } ;
struct intel_crtc_state {TYPE_1__ base; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct intel_crtc {TYPE_2__ base; } ;
struct drm_i915_private {int dummy; } ;
struct drm_format_info {int* cpp; int /*<<< orphan*/  format; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int EINVAL ; 
 scalar_t__ I915_FORMAT_MOD_X_TILED ; 
 scalar_t__ I915_FORMAT_MOD_Y_TILED ; 
 scalar_t__ I915_FORMAT_MOD_Y_TILED_CCS ; 
 scalar_t__ I915_FORMAT_MOD_Yf_TILED ; 
 scalar_t__ I915_FORMAT_MOD_Yf_TILED_CCS ; 
 int FUNC2 (struct drm_i915_private*) ; 
 scalar_t__ FUNC3 (struct drm_i915_private*,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 void* FUNC5 (scalar_t__,int) ; 
 scalar_t__ FUNC6 (unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct intel_crtc_state const*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int,void*) ; 
 scalar_t__ FUNC11 (struct drm_i915_private*) ; 
 struct drm_i915_private* FUNC12 (int /*<<< orphan*/ ) ; 
 struct intel_crtc* FUNC13 (int /*<<< orphan*/ ) ; 
 void* FUNC14 (scalar_t__) ; 

__attribute__((used)) static int
FUNC15(const struct intel_crtc_state *crtc_state,
		      int width, const struct drm_format_info *format,
		      u64 modifier, unsigned int rotation,
		      u32 plane_pixel_rate, struct skl_wm_params *wp,
		      int color_plane)
{
	struct intel_crtc *crtc = FUNC13(crtc_state->base.crtc);
	struct drm_i915_private *dev_priv = FUNC12(crtc->base.dev);
	u32 interm_pbpl;

	/* only planar format has two planes */
	if (color_plane == 1 && !FUNC9(format->format)) {
		FUNC1("Non planar format have single plane\n");
		return -EINVAL;
	}

	wp->y_tiled = modifier == I915_FORMAT_MOD_Y_TILED ||
		      modifier == I915_FORMAT_MOD_Yf_TILED ||
		      modifier == I915_FORMAT_MOD_Y_TILED_CCS ||
		      modifier == I915_FORMAT_MOD_Yf_TILED_CCS;
	wp->x_tiled = modifier == I915_FORMAT_MOD_X_TILED;
	wp->rc_surface = modifier == I915_FORMAT_MOD_Y_TILED_CCS ||
			 modifier == I915_FORMAT_MOD_Yf_TILED_CCS;
	wp->is_planar = FUNC9(format->format);

	wp->width = width;
	if (color_plane == 1 && wp->is_planar)
		wp->width /= 2;

	wp->cpp = format->cpp[color_plane];
	wp->plane_pixel_rate = plane_pixel_rate;

	if (FUNC2(dev_priv) >= 11 &&
	    modifier == I915_FORMAT_MOD_Yf_TILED  && wp->cpp == 1)
		wp->dbuf_block_size = 256;
	else
		wp->dbuf_block_size = 512;

	if (FUNC6(rotation)) {
		switch (wp->cpp) {
		case 1:
			wp->y_min_scanlines = 16;
			break;
		case 2:
			wp->y_min_scanlines = 8;
			break;
		case 4:
			wp->y_min_scanlines = 4;
			break;
		default:
			FUNC4(wp->cpp);
			return -EINVAL;
		}
	} else {
		wp->y_min_scanlines = 4;
	}

	if (FUNC11(dev_priv))
		wp->y_min_scanlines *= 2;

	wp->plane_bytes_per_line = wp->width * wp->cpp;
	if (wp->y_tiled) {
		interm_pbpl = FUNC0(wp->plane_bytes_per_line *
					   wp->y_min_scanlines,
					   wp->dbuf_block_size);

		if (FUNC2(dev_priv) >= 10)
			interm_pbpl++;

		wp->plane_blocks_per_line = FUNC5(interm_pbpl,
							wp->y_min_scanlines);
	} else if (wp->x_tiled && FUNC3(dev_priv, 9)) {
		interm_pbpl = FUNC0(wp->plane_bytes_per_line,
					   wp->dbuf_block_size);
		wp->plane_blocks_per_line = FUNC14(interm_pbpl);
	} else {
		interm_pbpl = FUNC0(wp->plane_bytes_per_line,
					   wp->dbuf_block_size) + 1;
		wp->plane_blocks_per_line = FUNC14(interm_pbpl);
	}

	wp->y_tile_minimum = FUNC10(wp->y_min_scanlines,
					     wp->plane_blocks_per_line);

	wp->linetime_us = FUNC7(
					FUNC8(crtc_state));

	return 0;
}