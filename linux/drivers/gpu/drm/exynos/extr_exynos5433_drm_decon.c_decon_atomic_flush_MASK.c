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
struct exynos_drm_crtc {struct decon_context* ctx; } ;
struct decon_context {int /*<<< orphan*/  vblank_lock; int /*<<< orphan*/  frame_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  DECON_UPDATE ; 
 int /*<<< orphan*/  STANDALONE_UPDATE_F ; 
 int /*<<< orphan*/  FUNC0 (struct decon_context*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct decon_context*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct decon_context*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct exynos_drm_crtc*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC6(struct exynos_drm_crtc *crtc)
{
	struct decon_context *ctx = crtc->ctx;
	unsigned long flags;

	FUNC4(&ctx->vblank_lock, flags);

	FUNC2(ctx, false);

	FUNC1(ctx, DECON_UPDATE, STANDALONE_UPDATE_F, ~0);

	ctx->frame_id = FUNC0(ctx, true);

	FUNC3(crtc);

	FUNC5(&ctx->vblank_lock, flags);
}