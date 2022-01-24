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
struct TYPE_10__ {unsigned int w; unsigned int h; unsigned int x; unsigned int y; } ;
struct TYPE_9__ {unsigned long x; unsigned long y; } ;
struct TYPE_7__ {struct drm_framebuffer* fb; } ;
struct exynos_drm_plane_state {TYPE_5__ crtc; TYPE_4__ src; TYPE_2__ base; } ;
struct TYPE_6__ {int /*<<< orphan*/  state; } ;
struct exynos_drm_plane {unsigned int index; TYPE_1__ base; } ;
struct exynos_drm_crtc {struct decon_context* ctx; } ;
struct drm_framebuffer {unsigned int* pitches; unsigned int width; unsigned long height; TYPE_3__* format; } ;
struct decon_context {scalar_t__ regs; int /*<<< orphan*/  dev; scalar_t__ suspended; } ;
struct TYPE_8__ {unsigned int* cpp; } ;

/* Variables and functions */
 scalar_t__ DECON_UPDATE ; 
 unsigned long DECON_UPDATE_STANDALONE_F ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,unsigned int,...) ; 
 scalar_t__ FUNC1 (unsigned int) ; 
 scalar_t__ FUNC2 (unsigned int) ; 
 scalar_t__ FUNC3 (unsigned int) ; 
 scalar_t__ FUNC4 (unsigned int) ; 
 unsigned long FUNC5 (unsigned int) ; 
 unsigned long FUNC6 (unsigned int) ; 
 unsigned long FUNC7 (unsigned int) ; 
 unsigned long FUNC8 (unsigned int) ; 
 unsigned long FUNC9 (int) ; 
 unsigned long FUNC10 (int) ; 
 unsigned long FUNC11 (int) ; 
 unsigned long FUNC12 (int) ; 
 unsigned long FUNC13 (int) ; 
 unsigned long FUNC14 (int) ; 
 scalar_t__ FUNC15 (unsigned int) ; 
 scalar_t__ FUNC16 (unsigned int) ; 
 scalar_t__ FUNC17 (unsigned int) ; 
 scalar_t__ FUNC18 (unsigned int) ; 
 scalar_t__ FUNC19 (unsigned int) ; 
 scalar_t__ FUNC20 (unsigned int) ; 
 unsigned long WINCONx_ENWIN ; 
 unsigned long WINCONx_TRIPLE_BUF_MODE ; 
 int /*<<< orphan*/  FUNC21 (struct decon_context*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC22 (struct decon_context*,unsigned int) ; 
 int /*<<< orphan*/  FUNC23 (struct decon_context*,unsigned int,struct drm_framebuffer*) ; 
 scalar_t__ FUNC24 (struct drm_framebuffer*,int /*<<< orphan*/ ) ; 
 unsigned long FUNC25 (scalar_t__) ; 
 struct exynos_drm_plane_state* FUNC26 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (unsigned long,scalar_t__) ; 

__attribute__((used)) static void FUNC28(struct exynos_drm_crtc *crtc,
			       struct exynos_drm_plane *plane)
{
	struct exynos_drm_plane_state *state =
				FUNC26(plane->base.state);
	struct decon_context *ctx = crtc->ctx;
	struct drm_framebuffer *fb = state->base.fb;
	int padding;
	unsigned long val, alpha;
	unsigned int last_x;
	unsigned int last_y;
	unsigned int win = plane->index;
	unsigned int cpp = fb->format->cpp[0];
	unsigned int pitch = fb->pitches[0];

	if (ctx->suspended)
		return;

	/*
	 * SHADOWCON/PRTCON register is used for enabling timing.
	 *
	 * for example, once only width value of a register is set,
	 * if the dma is started then decon hardware could malfunction so
	 * with protect window setting, the register fields with prefix '_F'
	 * wouldn't be updated at vsync also but updated once unprotect window
	 * is set.
	 */

	/* buffer start address */
	val = (unsigned long)FUNC24(fb, 0);
	FUNC27(val, ctx->regs + FUNC15(win));

	padding = (pitch / cpp) - fb->width;

	/* buffer size */
	FUNC27(fb->width + padding, ctx->regs + FUNC18(win));
	FUNC27(fb->height, ctx->regs + FUNC19(win));

	/* offset from the start of the buffer to read */
	FUNC27(state->src.x, ctx->regs + FUNC16(win));
	FUNC27(state->src.y, ctx->regs + FUNC17(win));

	FUNC0(ctx->dev, "start addr = 0x%lx\n",
			(unsigned long)val);
	FUNC0(ctx->dev, "ovl_width = %d, ovl_height = %d\n",
			state->crtc.w, state->crtc.h);

	val = FUNC5(state->crtc.x) |
		FUNC6(state->crtc.y);
	FUNC27(val, ctx->regs + FUNC1(win));

	last_x = state->crtc.x + state->crtc.w;
	if (last_x)
		last_x--;
	last_y = state->crtc.y + state->crtc.h;
	if (last_y)
		last_y--;

	val = FUNC7(last_x) | FUNC8(last_y);

	FUNC27(val, ctx->regs + FUNC2(win));

	FUNC0(ctx->dev, "osd pos: tx = %d, ty = %d, bx = %d, by = %d\n",
			state->crtc.x, state->crtc.y, last_x, last_y);

	/* OSD alpha */
	alpha = FUNC11(0x0) |
			FUNC10(0x0) |
			FUNC9(0x0);

	FUNC27(alpha, ctx->regs + FUNC3(win));

	alpha = FUNC14(0xff) |
			FUNC13(0xff) |
			FUNC12(0xff);

	FUNC27(alpha, ctx->regs + FUNC4(win));

	FUNC23(ctx, win, fb);

	/* hardware window 0 doesn't support color key. */
	if (win != 0)
		FUNC22(ctx, win);

	/* wincon */
	val = FUNC25(ctx->regs + FUNC20(win));
	val |= WINCONx_TRIPLE_BUF_MODE;
	val |= WINCONx_ENWIN;
	FUNC27(val, ctx->regs + FUNC20(win));

	/* Enable DMA channel and unprotect windows */
	FUNC21(ctx, win, false);

	val = FUNC25(ctx->regs + DECON_UPDATE);
	val |= DECON_UPDATE_STANDALONE_F;
	FUNC27(val, ctx->regs + DECON_UPDATE);
}