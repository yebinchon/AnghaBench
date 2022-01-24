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
struct vidi_context {int suspended; int /*<<< orphan*/  lock; } ;
struct exynos_drm_crtc {int /*<<< orphan*/  base; struct vidi_context* ctx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct exynos_drm_crtc *crtc)
{
	struct vidi_context *ctx = crtc->ctx;

	FUNC1(&ctx->lock);

	ctx->suspended = false;

	FUNC2(&ctx->lock);

	FUNC0(&crtc->base);
}