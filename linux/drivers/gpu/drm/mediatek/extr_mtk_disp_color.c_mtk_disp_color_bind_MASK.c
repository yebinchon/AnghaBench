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
struct mtk_disp_color {int /*<<< orphan*/  ddp_comp; } ;
struct drm_device {int dummy; } ;
struct device {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int /*<<< orphan*/ ,int) ; 
 struct mtk_disp_color* FUNC1 (struct device*) ; 
 int FUNC2 (struct drm_device*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct device *dev, struct device *master,
			       void *data)
{
	struct mtk_disp_color *priv = FUNC1(dev);
	struct drm_device *drm_dev = data;
	int ret;

	ret = FUNC2(drm_dev, &priv->ddp_comp);
	if (ret < 0) {
		FUNC0(dev, "Failed to register component %pOF: %d\n",
			dev->of_node, ret);
		return ret;
	}

	return 0;
}