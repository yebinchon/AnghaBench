#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct fimd_context {TYPE_1__* driver_data; scalar_t__ suspended; } ;
struct exynos_drm_plane {unsigned int index; } ;
struct exynos_drm_crtc {struct fimd_context* ctx; } ;
struct TYPE_2__ {scalar_t__ has_shadowcon; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fimd_context*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct fimd_context*,unsigned int,int) ; 

__attribute__((used)) static void FUNC2(struct exynos_drm_crtc *crtc,
			       struct exynos_drm_plane *plane)
{
	struct fimd_context *ctx = crtc->ctx;
	unsigned int win = plane->index;

	if (ctx->suspended)
		return;

	FUNC1(ctx, win, false);

	if (ctx->driver_data->has_shadowcon)
		FUNC0(ctx, win, false);
}