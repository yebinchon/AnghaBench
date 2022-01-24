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
struct dw_dsi {int enable; struct dsi_hw_ctx* ctx; } ;
struct dsi_hw_ctx {int /*<<< orphan*/  pclk; } ;
struct drm_encoder {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dw_dsi*) ; 
 struct dw_dsi* FUNC3 (struct drm_encoder*) ; 

__attribute__((used)) static void FUNC4(struct drm_encoder *encoder)
{
	struct dw_dsi *dsi = FUNC3(encoder);
	struct dsi_hw_ctx *ctx = dsi->ctx;
	int ret;

	if (dsi->enable)
		return;

	ret = FUNC1(ctx->pclk);
	if (ret) {
		FUNC0("fail to enable pclk: %d\n", ret);
		return;
	}

	FUNC2(dsi);

	dsi->enable = true;
}