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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct dw_dsi {struct dsi_hw_ctx* ctx; } ;
struct dsi_hw_ctx {int dummy; } ;
struct dsi_data {struct dsi_hw_ctx ctx; struct dw_dsi dsi; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct dsi_data* FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dsi_ops ; 
 int FUNC3 (struct platform_device*,struct dw_dsi*) ; 
 int /*<<< orphan*/  FUNC4 (struct platform_device*,struct dsi_data*) ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	struct dsi_data *data;
	struct dw_dsi *dsi;
	struct dsi_hw_ctx *ctx;
	int ret;

	data = FUNC2(&pdev->dev, sizeof(*data), GFP_KERNEL);
	if (!data) {
		FUNC0("failed to allocate dsi data.\n");
		return -ENOMEM;
	}
	dsi = &data->dsi;
	ctx = &data->ctx;
	dsi->ctx = ctx;

	ret = FUNC3(pdev, dsi);
	if (ret)
		return ret;

	FUNC4(pdev, data);

	return FUNC1(&pdev->dev, &dsi_ops);
}