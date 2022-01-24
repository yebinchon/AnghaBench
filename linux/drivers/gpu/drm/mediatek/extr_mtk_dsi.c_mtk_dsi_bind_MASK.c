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
struct mtk_dsi {int /*<<< orphan*/  ddp_comp; int /*<<< orphan*/  host; } ;
struct drm_device {int dummy; } ;
struct device {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int,...) ; 
 struct mtk_dsi* FUNC2 (struct device*) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct drm_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_device*,int /*<<< orphan*/ *) ; 
 int FUNC7 (struct drm_device*,struct mtk_dsi*) ; 

__attribute__((used)) static int FUNC8(struct device *dev, struct device *master, void *data)
{
	int ret;
	struct drm_device *drm = data;
	struct mtk_dsi *dsi = FUNC2(dev);

	ret = FUNC5(drm, &dsi->ddp_comp);
	if (ret < 0) {
		FUNC1(dev, "Failed to register component %pOF: %d\n",
			dev->of_node, ret);
		return ret;
	}

	ret = FUNC3(&dsi->host);
	if (ret < 0) {
		FUNC1(dev, "failed to register DSI host: %d\n", ret);
		goto err_ddp_comp_unregister;
	}

	ret = FUNC7(drm, dsi);
	if (ret) {
		FUNC0("Encoder create failed with %d\n", ret);
		goto err_unregister;
	}

	return 0;

err_unregister:
	FUNC4(&dsi->host);
err_ddp_comp_unregister:
	FUNC6(drm, &dsi->ddp_comp);
	return ret;
}