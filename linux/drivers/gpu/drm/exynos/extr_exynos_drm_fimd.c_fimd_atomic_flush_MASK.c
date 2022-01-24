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
struct fimd_context {scalar_t__ suspended; } ;
struct exynos_drm_crtc {struct fimd_context* ctx; } ;

/* Variables and functions */
 int WINDOWS_NR ; 
 int /*<<< orphan*/  FUNC0 (struct exynos_drm_crtc*) ; 
 int /*<<< orphan*/  FUNC1 (struct fimd_context*,int,int) ; 

__attribute__((used)) static void FUNC2(struct exynos_drm_crtc *crtc)
{
	struct fimd_context *ctx = crtc->ctx;
	int i;

	if (ctx->suspended)
		return;

	for (i = 0; i < WINDOWS_NR; i++)
		FUNC1(ctx, i, false);

	FUNC0(crtc);
}