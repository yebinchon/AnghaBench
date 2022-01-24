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
typedef  int /*<<< orphan*/  u32 ;
struct exynos_drm_plane {unsigned int index; } ;
struct exynos_drm_crtc {struct decon_context* ctx; } ;
struct decon_context {scalar_t__ regs; scalar_t__ suspended; } ;

/* Variables and functions */
 scalar_t__ DECON_UPDATE ; 
 int /*<<< orphan*/  DECON_UPDATE_STANDALONE_F ; 
 scalar_t__ FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  WINCONx_ENWIN ; 
 int /*<<< orphan*/  FUNC1 (struct decon_context*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct exynos_drm_crtc *crtc,
				struct exynos_drm_plane *plane)
{
	struct decon_context *ctx = crtc->ctx;
	unsigned int win = plane->index;
	u32 val;

	if (ctx->suspended)
		return;

	/* protect windows */
	FUNC1(ctx, win, true);

	/* wincon */
	val = FUNC2(ctx->regs + FUNC0(win));
	val &= ~WINCONx_ENWIN;
	FUNC3(val, ctx->regs + FUNC0(win));

	val = FUNC2(ctx->regs + DECON_UPDATE);
	val |= DECON_UPDATE_STANDALONE_F;
	FUNC3(val, ctx->regs + DECON_UPDATE);
}