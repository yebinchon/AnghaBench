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
typedef  int u32 ;
struct TYPE_5__ {unsigned long value; int mode; } ;
struct tegra_plane_state {int format; TYPE_2__ tiling; } ;
struct tegra_plane {int dummy; } ;
struct tegra_dc {int /*<<< orphan*/  dev; TYPE_1__* soc; } ;
struct tegra_bo {int /*<<< orphan*/  paddr; } ;
struct drm_plane_state {int dummy; } ;
struct drm_plane {TYPE_3__* state; } ;
struct drm_framebuffer {int /*<<< orphan*/ * pitches; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_6__ {unsigned int normalized_zpos; int src_y; int src_x; int /*<<< orphan*/  crtc_w; int /*<<< orphan*/  crtc_h; int /*<<< orphan*/  crtc_x; int /*<<< orphan*/  crtc_y; int /*<<< orphan*/  visible; struct drm_framebuffer* fb; int /*<<< orphan*/  crtc; } ;
struct TYPE_4__ {scalar_t__ supports_block_linear; } ;

/* Variables and functions */
 int BLEND_FACTOR_DST_ALPHA_ZERO ; 
 int BLEND_FACTOR_DST_COLOR_NEG_K1_TIMES_SRC ; 
 int BLEND_FACTOR_SRC_ALPHA_K2 ; 
 int BLEND_FACTOR_SRC_COLOR_K1_TIMES_SRC ; 
 int CLAMP_BEFORE_BLEND ; 
 int COLOR_EXPAND ; 
 int CONTROL_CSC_ENABLE ; 
 int /*<<< orphan*/  DC_WINBUF_CDE_CONTROL ; 
 int /*<<< orphan*/  DC_WINBUF_CROPPED_POINT ; 
 int /*<<< orphan*/  DC_WINBUF_START_ADDR ; 
 int /*<<< orphan*/  DC_WINBUF_START_ADDR_HI ; 
 int /*<<< orphan*/  DC_WINBUF_SURFACE_KIND ; 
 int DC_WINBUF_SURFACE_KIND_BLOCK ; 
 int FUNC0 (unsigned long) ; 
 int DC_WINBUF_SURFACE_KIND_PITCH ; 
 int DC_WINBUF_SURFACE_KIND_TILED ; 
 int /*<<< orphan*/  DC_WIN_BLEND_LAYER_CONTROL ; 
 int /*<<< orphan*/  DC_WIN_BLEND_MATCH_SELECT ; 
 int /*<<< orphan*/  DC_WIN_BLEND_NOMATCH_SELECT ; 
 int /*<<< orphan*/  DC_WIN_COLOR_DEPTH ; 
 int /*<<< orphan*/  DC_WIN_CORE_ACT_CONTROL ; 
 int /*<<< orphan*/  DC_WIN_CROPPED_SIZE ; 
 int /*<<< orphan*/  DC_WIN_PLANAR_STORAGE ; 
 int /*<<< orphan*/  DC_WIN_POSITION ; 
 int /*<<< orphan*/  DC_WIN_PRECOMP_WGRP_PARAMS ; 
 int /*<<< orphan*/  DC_WIN_SET_PARAMS ; 
 int /*<<< orphan*/  DC_WIN_SIZE ; 
 int /*<<< orphan*/  DC_WIN_WINDOWGROUP_SET_CONTROL_INPUT_SCALER ; 
 int /*<<< orphan*/  DC_WIN_WINDOWGROUP_SET_INPUT_SCALER_USAGE ; 
 int /*<<< orphan*/  DC_WIN_WINDOW_SET_CONTROL ; 
 int /*<<< orphan*/  DC_WIN_WIN_OPTIONS ; 
 int DEGAMMA_SRGB ; 
 int HORIZONTAL_TAPS_5 ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int INPUT_RANGE_FULL ; 
 int INPUT_SCALER_HBYPASS ; 
 int INPUT_SCALER_VBYPASS ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int FUNC5 (int) ; 
 int FUNC6 (int) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
#define  TEGRA_BO_TILING_MODE_BLOCK 130 
#define  TEGRA_BO_TILING_MODE_PITCH 129 
#define  TEGRA_BO_TILING_MODE_TILED 128 
 int VCOUNTER ; 
 int VERTICAL_TAPS_5 ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int) ; 
 int WIN_ENABLE ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct tegra_dc*,struct tegra_plane*) ; 
 struct tegra_bo* FUNC15 (struct drm_framebuffer*,int /*<<< orphan*/ ) ; 
 int FUNC16 (struct tegra_plane*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct tegra_plane*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct drm_plane*,struct drm_plane_state*) ; 
 struct tegra_dc* FUNC19 (int /*<<< orphan*/ ) ; 
 struct tegra_plane* FUNC20 (struct drm_plane*) ; 
 struct tegra_plane_state* FUNC21 (TYPE_3__*) ; 
 int FUNC22 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC23(struct drm_plane *plane,
					     struct drm_plane_state *old_state)
{
	struct tegra_plane_state *state = FUNC21(plane->state);
	struct tegra_dc *dc = FUNC19(plane->state->crtc);
	unsigned int zpos = plane->state->normalized_zpos;
	struct drm_framebuffer *fb = plane->state->fb;
	struct tegra_plane *p = FUNC20(plane);
	struct tegra_bo *bo;
	dma_addr_t base;
	u32 value;

	/* rien ne va plus */
	if (!plane->state->crtc || !plane->state->fb)
		return;

	if (!plane->state->visible) {
		FUNC18(plane, old_state);
		return;
	}

	FUNC12(dc->dev);

	FUNC14(dc, p);

	FUNC17(p, VCOUNTER, DC_WIN_CORE_ACT_CONTROL);

	/* blending */
	value = BLEND_FACTOR_DST_ALPHA_ZERO | BLEND_FACTOR_SRC_ALPHA_K2 |
		BLEND_FACTOR_DST_COLOR_NEG_K1_TIMES_SRC |
		BLEND_FACTOR_SRC_COLOR_K1_TIMES_SRC;
	FUNC17(p, value, DC_WIN_BLEND_MATCH_SELECT);

	value = BLEND_FACTOR_DST_ALPHA_ZERO | BLEND_FACTOR_SRC_ALPHA_K2 |
		BLEND_FACTOR_DST_COLOR_NEG_K1_TIMES_SRC |
		BLEND_FACTOR_SRC_COLOR_K1_TIMES_SRC;
	FUNC17(p, value, DC_WIN_BLEND_NOMATCH_SELECT);

	value = FUNC4(255) | FUNC3(255) | FUNC10(255 - zpos);
	FUNC17(p, value, DC_WIN_BLEND_LAYER_CONTROL);

	/* bypass scaling */
	value = HORIZONTAL_TAPS_5 | VERTICAL_TAPS_5;
	FUNC17(p, value, DC_WIN_WINDOWGROUP_SET_CONTROL_INPUT_SCALER);

	value = INPUT_SCALER_VBYPASS | INPUT_SCALER_HBYPASS;
	FUNC17(p, value, DC_WIN_WINDOWGROUP_SET_INPUT_SCALER_USAGE);

	/* disable compression */
	FUNC17(p, 0, DC_WINBUF_CDE_CONTROL);

	bo = FUNC15(fb, 0);
	base = bo->paddr;

	FUNC17(p, state->format, DC_WIN_COLOR_DEPTH);
	FUNC17(p, 0, DC_WIN_PRECOMP_WGRP_PARAMS);

	value = FUNC8(plane->state->crtc_y) |
		FUNC1(plane->state->crtc_x);
	FUNC17(p, value, DC_WIN_POSITION);

	value = FUNC9(plane->state->crtc_h) | FUNC2(plane->state->crtc_w);
	FUNC17(p, value, DC_WIN_SIZE);

	value = WIN_ENABLE | COLOR_EXPAND;
	FUNC17(p, value, DC_WIN_WIN_OPTIONS);

	value = FUNC9(plane->state->crtc_h) | FUNC2(plane->state->crtc_w);
	FUNC17(p, value, DC_WIN_CROPPED_SIZE);

	FUNC17(p, FUNC22(base), DC_WINBUF_START_ADDR_HI);
	FUNC17(p, FUNC11(base), DC_WINBUF_START_ADDR);

	value = FUNC7(fb->pitches[0]);
	FUNC17(p, value, DC_WIN_PLANAR_STORAGE);

	value = CLAMP_BEFORE_BLEND | DEGAMMA_SRGB | INPUT_RANGE_FULL;
	FUNC17(p, value, DC_WIN_SET_PARAMS);

	value = FUNC5(plane->state->src_y >> 16) |
		FUNC6(plane->state->src_x >> 16);
	FUNC17(p, value, DC_WINBUF_CROPPED_POINT);

	if (dc->soc->supports_block_linear) {
		unsigned long height = state->tiling.value;

		/* XXX */
		switch (state->tiling.mode) {
		case TEGRA_BO_TILING_MODE_PITCH:
			value = FUNC0(0) |
				DC_WINBUF_SURFACE_KIND_PITCH;
			break;

		/* XXX not supported on Tegra186 and later */
		case TEGRA_BO_TILING_MODE_TILED:
			value = DC_WINBUF_SURFACE_KIND_TILED;
			break;

		case TEGRA_BO_TILING_MODE_BLOCK:
			value = FUNC0(height) |
				DC_WINBUF_SURFACE_KIND_BLOCK;
			break;
		}

		FUNC17(p, value, DC_WINBUF_SURFACE_KIND);
	}

	/* disable gamut CSC */
	value = FUNC16(p, DC_WIN_WINDOW_SET_CONTROL);
	value &= ~CONTROL_CSC_ENABLE;
	FUNC17(p, value, DC_WIN_WINDOW_SET_CONTROL);

	FUNC13(dc->dev);
}