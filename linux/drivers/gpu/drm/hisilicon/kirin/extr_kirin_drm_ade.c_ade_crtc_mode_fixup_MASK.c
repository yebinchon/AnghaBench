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
struct kirin_crtc {struct ade_hw_ctx* hw_ctx; } ;
struct drm_display_mode {int clock; } ;
struct drm_crtc {int dummy; } ;
struct ade_hw_ctx {int /*<<< orphan*/  ade_pix_clk; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 struct kirin_crtc* FUNC1 (struct drm_crtc*) ; 

__attribute__((used)) static bool FUNC2(struct drm_crtc *crtc,
				const struct drm_display_mode *mode,
				struct drm_display_mode *adjusted_mode)
{
	struct kirin_crtc *kcrtc = FUNC1(crtc);
	struct ade_hw_ctx *ctx = kcrtc->hw_ctx;

	adjusted_mode->clock =
		FUNC0(ctx->ade_pix_clk, mode->clock * 1000) / 1000;
	return true;
}