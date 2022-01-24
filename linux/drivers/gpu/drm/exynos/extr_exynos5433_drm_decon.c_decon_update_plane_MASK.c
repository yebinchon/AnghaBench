#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned int u32 ;
struct TYPE_14__ {int y; unsigned int w; int h; scalar_t__ x; } ;
struct TYPE_13__ {unsigned int h; } ;
struct TYPE_9__ {struct drm_framebuffer* fb; } ;
struct exynos_drm_plane_state {TYPE_7__ crtc; TYPE_6__ src; TYPE_2__ base; } ;
struct TYPE_8__ {int /*<<< orphan*/  state; } ;
struct exynos_drm_plane {unsigned int index; TYPE_1__ base; } ;
struct TYPE_11__ {int flags; } ;
struct TYPE_12__ {TYPE_4__ mode; } ;
struct exynos_drm_crtc {TYPE_5__ base; struct decon_context* ctx; } ;
struct drm_framebuffer {unsigned int* pitches; TYPE_3__* format; } ;
struct decon_context {int out_type; scalar_t__ addr; } ;
typedef  unsigned int dma_addr_t ;
struct TYPE_10__ {unsigned int* cpp; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int,int,int) ; 
 unsigned int FUNC1 (scalar_t__) ; 
 unsigned int FUNC2 (int) ; 
 scalar_t__ FUNC3 (unsigned int) ; 
 scalar_t__ FUNC4 (unsigned int) ; 
 scalar_t__ FUNC5 (unsigned int) ; 
 scalar_t__ FUNC6 (unsigned int) ; 
 scalar_t__ FUNC7 (unsigned int) ; 
 scalar_t__ FUNC8 (unsigned int) ; 
 scalar_t__ FUNC9 (unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (unsigned int) ; 
 int DRM_MODE_FLAG_INTERLACE ; 
 int IFTYPE_HDMI ; 
 unsigned int FUNC11 (int) ; 
 unsigned int FUNC12 (int) ; 
 unsigned int FUNC13 (int) ; 
 int /*<<< orphan*/  WINCONx_ENWIN_F ; 
 int /*<<< orphan*/  FUNC14 (struct decon_context*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct decon_context*,unsigned int,struct drm_framebuffer*) ; 
 unsigned int FUNC16 (struct drm_framebuffer*,int /*<<< orphan*/ ) ; 
 struct exynos_drm_plane_state* FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (unsigned int,scalar_t__) ; 

__attribute__((used)) static void FUNC19(struct exynos_drm_crtc *crtc,
			       struct exynos_drm_plane *plane)
{
	struct exynos_drm_plane_state *state =
				FUNC17(plane->base.state);
	struct decon_context *ctx = crtc->ctx;
	struct drm_framebuffer *fb = state->base.fb;
	unsigned int win = plane->index;
	unsigned int cpp = fb->format->cpp[0];
	unsigned int pitch = fb->pitches[0];
	dma_addr_t dma_addr = FUNC16(fb, 0);
	u32 val;

	if (crtc->base.mode.flags & DRM_MODE_FLAG_INTERLACE) {
		val = FUNC1(state->crtc.x) |
			FUNC2(state->crtc.y / 2);
		FUNC18(val, ctx->addr + FUNC3(win));

		val = FUNC1(state->crtc.x + state->crtc.w - 1) |
			FUNC2((state->crtc.y + state->crtc.h) / 2 - 1);
		FUNC18(val, ctx->addr + FUNC4(win));
	} else {
		val = FUNC1(state->crtc.x) | FUNC2(state->crtc.y);
		FUNC18(val, ctx->addr + FUNC3(win));

		val = FUNC1(state->crtc.x + state->crtc.w - 1) |
				FUNC2(state->crtc.y + state->crtc.h - 1);
		FUNC18(val, ctx->addr + FUNC4(win));
	}

	val = FUNC13(0xff) | FUNC12(0xff) |
		FUNC11(0xff);
	FUNC18(val, ctx->addr + FUNC5(win));

	val = FUNC13(0x0) | FUNC12(0x0) |
		FUNC11(0x0);
	FUNC18(val, ctx->addr + FUNC6(win));

	FUNC18(dma_addr, ctx->addr + FUNC7(win));

	val = dma_addr + pitch * state->src.h;
	FUNC18(val, ctx->addr + FUNC8(win));

	if (!(ctx->out_type & IFTYPE_HDMI))
		val = FUNC0(pitch - state->crtc.w * cpp, 27, 14)
			| FUNC0(state->crtc.w * cpp, 13, 0);
	else
		val = FUNC0(pitch - state->crtc.w * cpp, 29, 15)
			| FUNC0(state->crtc.w * cpp, 14, 0);
	FUNC18(val, ctx->addr + FUNC9(win));

	FUNC15(ctx, win, fb);

	/* window enable */
	FUNC14(ctx, FUNC10(win), WINCONx_ENWIN_F, ~0);
}