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
typedef  int /*<<< orphan*/  u32 ;
struct mixer_context {int /*<<< orphan*/  reg_slock; int /*<<< orphan*/  flags; } ;
struct TYPE_10__ {int normalized_zpos; int /*<<< orphan*/  alpha; struct drm_framebuffer* fb; } ;
struct TYPE_9__ {int w; int x; int h; int y; } ;
struct TYPE_8__ {int w; int h; int y; int /*<<< orphan*/  x; } ;
struct exynos_drm_plane_state {int h_ratio; int v_ratio; TYPE_5__ base; TYPE_4__ crtc; TYPE_3__ src; } ;
struct TYPE_6__ {int /*<<< orphan*/  state; } ;
struct exynos_drm_plane {int /*<<< orphan*/  index; TYPE_1__ base; } ;
struct drm_framebuffer {scalar_t__ modifier; int* pitches; int height; TYPE_2__* format; } ;
typedef  int dma_addr_t ;
struct TYPE_7__ {scalar_t__ format; } ;

/* Variables and functions */
 scalar_t__ DRM_FORMAT_MOD_SAMSUNG_64_32_TILE ; 
 scalar_t__ DRM_FORMAT_NV21 ; 
 int /*<<< orphan*/  MXR_BIT_INTERLACE ; 
 int /*<<< orphan*/  VP_BOT_C_PTR ; 
 int /*<<< orphan*/  VP_BOT_Y_PTR ; 
 int /*<<< orphan*/  VP_DST_HEIGHT ; 
 int /*<<< orphan*/  VP_DST_H_POSITION ; 
 int /*<<< orphan*/  VP_DST_V_POSITION ; 
 int /*<<< orphan*/  VP_DST_WIDTH ; 
 int /*<<< orphan*/  VP_ENDIAN_MODE ; 
 int VP_ENDIAN_MODE_LITTLE ; 
 int /*<<< orphan*/  VP_H_RATIO ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  VP_IMG_SIZE_C ; 
 int /*<<< orphan*/  VP_IMG_SIZE_Y ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  VP_MODE ; 
 int /*<<< orphan*/  VP_MODE_FMT_MASK ; 
 int /*<<< orphan*/  VP_MODE_LINE_SKIP ; 
 int /*<<< orphan*/  VP_MODE_MEM_LINEAR ; 
 int /*<<< orphan*/  VP_MODE_MEM_TILED ; 
 int /*<<< orphan*/  VP_MODE_NV12 ; 
 int /*<<< orphan*/  VP_MODE_NV21 ; 
 int /*<<< orphan*/  VP_SRC_HEIGHT ; 
 int /*<<< orphan*/  VP_SRC_H_POSITION ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VP_SRC_V_POSITION ; 
 int /*<<< orphan*/  VP_SRC_WIDTH ; 
 int /*<<< orphan*/  VP_TOP_C_PTR ; 
 int /*<<< orphan*/  VP_TOP_Y_PTR ; 
 int /*<<< orphan*/  VP_V_RATIO ; 
 int FUNC3 (struct drm_framebuffer*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct mixer_context*,int /*<<< orphan*/ ,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct mixer_context*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct mixer_context*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct exynos_drm_plane_state* FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct mixer_context*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (struct mixer_context*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct mixer_context*) ; 

__attribute__((used)) static void FUNC14(struct mixer_context *ctx,
			    struct exynos_drm_plane *plane)
{
	struct exynos_drm_plane_state *state =
				FUNC10(plane->base.state);
	struct drm_framebuffer *fb = state->base.fb;
	unsigned int priority = state->base.normalized_zpos + 1;
	unsigned long flags;
	dma_addr_t luma_addr[2], chroma_addr[2];
	bool is_tiled, is_nv21;
	u32 val;

	is_nv21 = (fb->format->format == DRM_FORMAT_NV21);
	is_tiled = (fb->modifier == DRM_FORMAT_MOD_SAMSUNG_64_32_TILE);

	luma_addr[0] = FUNC3(fb, 0);
	chroma_addr[0] = FUNC3(fb, 1);

	if (FUNC9(MXR_BIT_INTERLACE, &ctx->flags)) {
		if (is_tiled) {
			luma_addr[1] = luma_addr[0] + 0x40;
			chroma_addr[1] = chroma_addr[0] + 0x40;
		} else {
			luma_addr[1] = luma_addr[0] + fb->pitches[0];
			chroma_addr[1] = chroma_addr[0] + fb->pitches[1];
		}
	} else {
		luma_addr[1] = 0;
		chroma_addr[1] = 0;
	}

	FUNC7(&ctx->reg_slock, flags);

	/* interlace or progressive scan mode */
	val = (FUNC9(MXR_BIT_INTERLACE, &ctx->flags) ? ~0 : 0);
	FUNC12(ctx, VP_MODE, val, VP_MODE_LINE_SKIP);

	/* setup format */
	val = (is_nv21 ? VP_MODE_NV21 : VP_MODE_NV12);
	val |= (is_tiled ? VP_MODE_MEM_TILED : VP_MODE_MEM_LINEAR);
	FUNC12(ctx, VP_MODE, val, VP_MODE_FMT_MASK);

	/* setting size of input image */
	FUNC11(ctx, VP_IMG_SIZE_Y, FUNC0(fb->pitches[0]) |
		FUNC1(fb->height));
	/* chroma plane for NV12/NV21 is half the height of the luma plane */
	FUNC11(ctx, VP_IMG_SIZE_C, FUNC0(fb->pitches[1]) |
		FUNC1(fb->height / 2));

	FUNC11(ctx, VP_SRC_WIDTH, state->src.w);
	FUNC11(ctx, VP_SRC_H_POSITION,
			FUNC2(state->src.x));
	FUNC11(ctx, VP_DST_WIDTH, state->crtc.w);
	FUNC11(ctx, VP_DST_H_POSITION, state->crtc.x);

	if (FUNC9(MXR_BIT_INTERLACE, &ctx->flags)) {
		FUNC11(ctx, VP_SRC_HEIGHT, state->src.h / 2);
		FUNC11(ctx, VP_SRC_V_POSITION, state->src.y / 2);
		FUNC11(ctx, VP_DST_HEIGHT, state->crtc.h / 2);
		FUNC11(ctx, VP_DST_V_POSITION, state->crtc.y / 2);
	} else {
		FUNC11(ctx, VP_SRC_HEIGHT, state->src.h);
		FUNC11(ctx, VP_SRC_V_POSITION, state->src.y);
		FUNC11(ctx, VP_DST_HEIGHT, state->crtc.h);
		FUNC11(ctx, VP_DST_V_POSITION, state->crtc.y);
	}

	FUNC11(ctx, VP_H_RATIO, state->h_ratio);
	FUNC11(ctx, VP_V_RATIO, state->v_ratio);

	FUNC11(ctx, VP_ENDIAN_MODE, VP_ENDIAN_MODE_LITTLE);

	/* set buffer address to vp */
	FUNC11(ctx, VP_TOP_Y_PTR, luma_addr[0]);
	FUNC11(ctx, VP_BOT_Y_PTR, luma_addr[1]);
	FUNC11(ctx, VP_TOP_C_PTR, chroma_addr[0]);
	FUNC11(ctx, VP_BOT_C_PTR, chroma_addr[1]);

	FUNC4(ctx, plane->index, priority, true);
	FUNC5(ctx, state->base.alpha);

	FUNC8(&ctx->reg_slock, flags);

	FUNC6(ctx);
	FUNC13(ctx);
}