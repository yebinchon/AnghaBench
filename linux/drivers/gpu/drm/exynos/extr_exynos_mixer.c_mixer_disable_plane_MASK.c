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
struct mixer_context {int /*<<< orphan*/  reg_slock; int /*<<< orphan*/  flags; int /*<<< orphan*/  dev; } ;
struct exynos_drm_plane {int /*<<< orphan*/  index; } ;
struct exynos_drm_crtc {struct mixer_context* ctx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MXR_BIT_POWERED ; 
 int /*<<< orphan*/  FUNC1 (struct mixer_context*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct exynos_drm_crtc *crtc,
				struct exynos_drm_plane *plane)
{
	struct mixer_context *mixer_ctx = crtc->ctx;
	unsigned long flags;

	FUNC0(mixer_ctx->dev, "win: %d\n", plane->index);

	if (!FUNC4(MXR_BIT_POWERED, &mixer_ctx->flags))
		return;

	FUNC2(&mixer_ctx->reg_slock, flags);
	FUNC1(mixer_ctx, plane->index, 0, false);
	FUNC3(&mixer_ctx->reg_slock, flags);
}