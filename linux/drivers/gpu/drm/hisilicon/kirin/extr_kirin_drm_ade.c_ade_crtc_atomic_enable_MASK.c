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
struct kirin_crtc {int enable; struct ade_hw_ctx* hw_ctx; } ;
struct drm_crtc_state {int dummy; } ;
struct drm_crtc {int dummy; } ;
struct ade_hw_ctx {int /*<<< orphan*/  base; int /*<<< orphan*/  power_on; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ade_hw_ctx*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct ade_hw_ctx*) ; 
 int /*<<< orphan*/  FUNC3 (struct ade_hw_ctx*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_crtc*) ; 
 struct kirin_crtc* FUNC5 (struct drm_crtc*) ; 

__attribute__((used)) static void FUNC6(struct drm_crtc *crtc,
				   struct drm_crtc_state *old_state)
{
	struct kirin_crtc *kcrtc = FUNC5(crtc);
	struct ade_hw_ctx *ctx = kcrtc->hw_ctx;
	int ret;

	if (kcrtc->enable)
		return;

	if (!ctx->power_on) {
		ret = FUNC2(ctx);
		if (ret)
			return;
	}

	FUNC3(ctx);
	FUNC0(ctx);
	FUNC1(ctx->base);
	FUNC4(crtc);
	kcrtc->enable = true;
}