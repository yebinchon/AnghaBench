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
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct mixer_drv_data {scalar_t__ has_sclk; scalar_t__ is_vp_enabled; int /*<<< orphan*/  version; } ;
struct mixer_context {int /*<<< orphan*/  flags; int /*<<< orphan*/  mxr_ver; struct device* dev; struct platform_device* pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MXR_BIT_HAS_SCLK ; 
 int /*<<< orphan*/  MXR_BIT_VP_ENABLED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct device*,int /*<<< orphan*/ *) ; 
 struct mixer_context* FUNC3 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mixer_component_ops ; 
 struct mixer_drv_data* FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (struct platform_device*,struct mixer_context*) ; 
 int /*<<< orphan*/  FUNC6 (struct device*) ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	const struct mixer_drv_data *drv;
	struct mixer_context *ctx;
	int ret;

	ctx = FUNC3(&pdev->dev, sizeof(*ctx), GFP_KERNEL);
	if (!ctx) {
		FUNC0(dev, "failed to alloc mixer context.\n");
		return -ENOMEM;
	}

	drv = FUNC4(dev);

	ctx->pdev = pdev;
	ctx->dev = dev;
	ctx->mxr_ver = drv->version;

	if (drv->is_vp_enabled)
		FUNC1(MXR_BIT_VP_ENABLED, &ctx->flags);
	if (drv->has_sclk)
		FUNC1(MXR_BIT_HAS_SCLK, &ctx->flags);

	FUNC5(pdev, ctx);

	ret = FUNC2(&pdev->dev, &mixer_component_ops);
	if (!ret)
		FUNC6(dev);

	return ret;
}