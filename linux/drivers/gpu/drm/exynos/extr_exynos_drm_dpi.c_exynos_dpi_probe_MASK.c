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
struct drm_encoder {int dummy; } ;
struct exynos_dpi {struct drm_encoder encoder; int /*<<< orphan*/  panel; scalar_t__ panel_node; struct device* dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct drm_encoder* FUNC0 (int /*<<< orphan*/ ) ; 
 struct drm_encoder* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,struct exynos_dpi*) ; 
 struct exynos_dpi* FUNC4 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct exynos_dpi*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 

struct drm_encoder *FUNC7(struct device *dev)
{
	struct exynos_dpi *ctx;
	int ret;

	ctx = FUNC4(dev, sizeof(*ctx), GFP_KERNEL);
	if (!ctx)
		return FUNC1(-ENOMEM);

	ctx->dev = dev;

	ret = FUNC5(ctx);
	if (ret < 0) {
		FUNC3(dev, ctx);
		return NULL;
	}

	if (ctx->panel_node) {
		ctx->panel = FUNC6(ctx->panel_node);
		if (FUNC2(ctx->panel))
			return FUNC0(ctx->panel);
	}

	return &ctx->encoder;
}