#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct fimd_context {int /*<<< orphan*/  win_updated; scalar_t__ i80_if; TYPE_6__* driver_data; int /*<<< orphan*/  dev; scalar_t__ regs; scalar_t__ suspended; } ;
struct TYPE_11__ {unsigned int x; unsigned int y; int /*<<< orphan*/  w; } ;
struct TYPE_10__ {unsigned int h; unsigned int w; unsigned int x; unsigned int y; } ;
struct TYPE_8__ {struct drm_framebuffer* fb; } ;
struct exynos_drm_plane_state {TYPE_5__ src; TYPE_4__ crtc; TYPE_2__ base; } ;
struct TYPE_7__ {int /*<<< orphan*/  state; } ;
struct exynos_drm_plane {unsigned int index; TYPE_1__ base; } ;
struct exynos_drm_crtc {struct fimd_context* ctx; } ;
struct drm_framebuffer {unsigned int* pitches; TYPE_3__* format; } ;
typedef  scalar_t__ dma_addr_t ;
struct TYPE_12__ {scalar_t__ has_shadowcon; } ;
struct TYPE_9__ {unsigned int* cpp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,unsigned int,...) ; 
 scalar_t__ FUNC1 (unsigned int) ; 
 scalar_t__ FUNC2 (unsigned int) ; 
 scalar_t__ FUNC3 (unsigned int) ; 
 scalar_t__ FUNC4 (unsigned int) ; 
 unsigned long FUNC5 (unsigned int) ; 
 unsigned long FUNC6 (unsigned int) ; 
 unsigned long FUNC7 (unsigned int) ; 
 unsigned long FUNC8 (unsigned int) ; 
 unsigned long FUNC9 (unsigned int) ; 
 unsigned long FUNC10 (unsigned int) ; 
 unsigned long FUNC11 (unsigned int) ; 
 unsigned long FUNC12 (unsigned int) ; 
 unsigned long FUNC13 (unsigned int) ; 
 unsigned long FUNC14 (unsigned int) ; 
 unsigned long FUNC15 (unsigned int) ; 
 unsigned long FUNC16 (unsigned int) ; 
 scalar_t__ FUNC17 (unsigned int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC18 (unsigned int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC19 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC21 (struct drm_framebuffer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (struct fimd_context*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC23 (struct fimd_context*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC24 (struct fimd_context*,unsigned int) ; 
 int /*<<< orphan*/  FUNC25 (struct fimd_context*,unsigned int,struct drm_framebuffer*,int /*<<< orphan*/ ) ; 
 struct exynos_drm_plane_state* FUNC26 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (unsigned long,scalar_t__) ; 

__attribute__((used)) static void FUNC28(struct exynos_drm_crtc *crtc,
			      struct exynos_drm_plane *plane)
{
	struct exynos_drm_plane_state *state =
				FUNC26(plane->base.state);
	struct fimd_context *ctx = crtc->ctx;
	struct drm_framebuffer *fb = state->base.fb;
	dma_addr_t dma_addr;
	unsigned long val, size, offset;
	unsigned int last_x, last_y, buf_offsize, line_size;
	unsigned int win = plane->index;
	unsigned int cpp = fb->format->cpp[0];
	unsigned int pitch = fb->pitches[0];

	if (ctx->suspended)
		return;

	offset = state->src.x * cpp;
	offset += state->src.y * pitch;

	/* buffer start address */
	dma_addr = FUNC21(fb, 0) + offset;
	val = (unsigned long)dma_addr;
	FUNC27(val, ctx->regs + FUNC19(win, 0));

	/* buffer end address */
	size = pitch * state->crtc.h;
	val = (unsigned long)(dma_addr + size);
	FUNC27(val, ctx->regs + FUNC17(win, 0));

	FUNC0(ctx->dev,
			  "start addr = 0x%lx, end addr = 0x%lx, size = 0x%lx\n",
			  (unsigned long)dma_addr, val, size);
	FUNC0(ctx->dev, "ovl_width = %d, ovl_height = %d\n",
			  state->crtc.w, state->crtc.h);

	/* buffer size */
	buf_offsize = pitch - (state->crtc.w * cpp);
	line_size = state->crtc.w * cpp;
	val = FUNC13(buf_offsize) |
		FUNC15(line_size) |
		FUNC14(buf_offsize) |
		FUNC16(line_size);
	FUNC27(val, ctx->regs + FUNC18(win, 0));

	/* OSD position */
	val = FUNC5(state->crtc.x) |
		FUNC7(state->crtc.y) |
		FUNC6(state->crtc.x) |
		FUNC8(state->crtc.y);
	FUNC27(val, ctx->regs + FUNC1(win));

	last_x = state->crtc.x + state->crtc.w;
	if (last_x)
		last_x--;
	last_y = state->crtc.y + state->crtc.h;
	if (last_y)
		last_y--;

	val = FUNC9(last_x) | FUNC11(last_y) |
		FUNC10(last_x) | FUNC12(last_y);

	FUNC27(val, ctx->regs + FUNC2(win));

	FUNC0(ctx->dev,
			  "osd pos: tx = %d, ty = %d, bx = %d, by = %d\n",
			  state->crtc.x, state->crtc.y, last_x, last_y);

	/* OSD size */
	if (win != 3 && win != 4) {
		u32 offset = FUNC4(win);
		if (win == 0)
			offset = FUNC3(win);
		val = state->crtc.w * state->crtc.h;
		FUNC27(val, ctx->regs + offset);

		FUNC0(ctx->dev, "osd size = 0x%x\n",
				  (unsigned int)val);
	}

	FUNC25(ctx, win, fb, state->src.w);

	/* hardware window 0 doesn't support color key. */
	if (win != 0)
		FUNC24(ctx, win);

	FUNC23(ctx, win, true);

	if (ctx->driver_data->has_shadowcon)
		FUNC22(ctx, win, true);

	if (ctx->i80_if)
		FUNC20(&ctx->win_updated, 1);
}