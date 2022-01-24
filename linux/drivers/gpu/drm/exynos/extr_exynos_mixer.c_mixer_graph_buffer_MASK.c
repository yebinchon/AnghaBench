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
typedef  int u32 ;
struct mixer_context {int /*<<< orphan*/  reg_slock; } ;
struct TYPE_10__ {int normalized_zpos; unsigned int pixel_blend_mode; int /*<<< orphan*/  alpha; struct drm_framebuffer* fb; } ;
struct TYPE_9__ {int x; int y; int /*<<< orphan*/  h; int /*<<< orphan*/  w; } ;
struct TYPE_7__ {unsigned int x; unsigned int y; } ;
struct exynos_drm_plane_state {int h_ratio; int v_ratio; TYPE_5__ base; TYPE_4__ src; TYPE_2__ crtc; } ;
struct TYPE_6__ {int /*<<< orphan*/  state; } ;
struct exynos_drm_plane {unsigned int index; TYPE_1__ base; } ;
struct drm_framebuffer {int* pitches; TYPE_3__* format; } ;
typedef  int dma_addr_t ;
struct TYPE_8__ {int format; int* cpp; scalar_t__ has_alpha; } ;

/* Variables and functions */
#define  DRM_FORMAT_ARGB1555 134 
#define  DRM_FORMAT_ARGB4444 133 
#define  DRM_FORMAT_ARGB8888 132 
#define  DRM_FORMAT_RGB565 131 
#define  DRM_FORMAT_XRGB1555 130 
#define  DRM_FORMAT_XRGB4444 129 
#define  DRM_FORMAT_XRGB8888 128 
 unsigned int DRM_MODE_BLEND_PIXEL_NONE ; 
 unsigned int MXR_FORMAT_ARGB1555 ; 
 unsigned int MXR_FORMAT_ARGB4444 ; 
 unsigned int MXR_FORMAT_ARGB8888 ; 
 unsigned int MXR_FORMAT_RGB565 ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int) ; 
 int /*<<< orphan*/  MXR_GRP_CFG_FORMAT_MASK ; 
 int /*<<< orphan*/  FUNC5 (unsigned int) ; 
 int FUNC6 (unsigned int) ; 
 int FUNC7 (unsigned int) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (unsigned int) ; 
 int FUNC10 (unsigned int) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (struct drm_framebuffer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct mixer_context*,unsigned int,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct mixer_context*,unsigned int,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC15 (struct mixer_context*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (struct mixer_context*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct mixer_context*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,unsigned long) ; 
 struct exynos_drm_plane_state* FUNC20 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC21(struct mixer_context *ctx,
			       struct exynos_drm_plane *plane)
{
	struct exynos_drm_plane_state *state =
				FUNC20(plane->base.state);
	struct drm_framebuffer *fb = state->base.fb;
	unsigned int priority = state->base.normalized_zpos + 1;
	unsigned long flags;
	unsigned int win = plane->index;
	unsigned int x_ratio = 0, y_ratio = 0;
	unsigned int dst_x_offset, dst_y_offset;
	unsigned int pixel_alpha;
	dma_addr_t dma_addr;
	unsigned int fmt;
	u32 val;

	if (fb->format->has_alpha)
		pixel_alpha = state->base.pixel_blend_mode;
	else
		pixel_alpha = DRM_MODE_BLEND_PIXEL_NONE;

	switch (fb->format->format) {
	case DRM_FORMAT_XRGB4444:
	case DRM_FORMAT_ARGB4444:
		fmt = MXR_FORMAT_ARGB4444;
		break;

	case DRM_FORMAT_XRGB1555:
	case DRM_FORMAT_ARGB1555:
		fmt = MXR_FORMAT_ARGB1555;
		break;

	case DRM_FORMAT_RGB565:
		fmt = MXR_FORMAT_RGB565;
		break;

	case DRM_FORMAT_XRGB8888:
	case DRM_FORMAT_ARGB8888:
	default:
		fmt = MXR_FORMAT_ARGB8888;
		break;
	}

	/* ratio is already checked by common plane code */
	x_ratio = state->h_ratio == (1 << 15);
	y_ratio = state->v_ratio == (1 << 15);

	dst_x_offset = state->crtc.x;
	dst_y_offset = state->crtc.y;

	/* translate dma address base s.t. the source image offset is zero */
	dma_addr = FUNC12(fb, 0)
		+ (state->src.x * fb->format->cpp[0])
		+ (state->src.y * fb->pitches[0]);

	FUNC18(&ctx->reg_slock, flags);

	/* setup format */
	FUNC16(ctx, FUNC1(win),
		FUNC5(fmt), MXR_GRP_CFG_FORMAT_MASK);

	/* setup geometry */
	FUNC15(ctx, FUNC3(win),
			fb->pitches[0] / fb->format->cpp[0]);

	val  = FUNC11(state->src.w);
	val |= FUNC8(state->src.h);
	val |= FUNC9(x_ratio);
	val |= FUNC10(y_ratio);
	FUNC15(ctx, FUNC4(win), val);

	/* setup offsets in display image */
	val  = FUNC6(dst_x_offset);
	val |= FUNC7(dst_y_offset);
	FUNC15(ctx, FUNC2(win), val);

	/* set buffer address to mixer */
	FUNC15(ctx, FUNC0(win), dma_addr);

	FUNC14(ctx, win, priority, true);
	FUNC13(ctx, win, pixel_alpha, state->base.alpha);

	FUNC19(&ctx->reg_slock, flags);

	FUNC17(ctx);
}