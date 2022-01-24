#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct device {int /*<<< orphan*/  of_node; } ;
struct platform_device {struct device dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  of_node; int /*<<< orphan*/ * funcs; } ;
struct mtk_hdmi {TYPE_1__ bridge; int /*<<< orphan*/  phy; struct device* dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,...) ; 
 struct mtk_hdmi* FUNC4 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  mtk_hdmi_bridge_funcs ; 
 int FUNC8 (struct mtk_hdmi*) ; 
 int FUNC9 (struct mtk_hdmi*,struct platform_device*) ; 
 int FUNC10 (struct mtk_hdmi*) ; 
 int /*<<< orphan*/  FUNC11 (struct device*) ; 
 int /*<<< orphan*/  FUNC12 (struct platform_device*,struct mtk_hdmi*) ; 

__attribute__((used)) static int FUNC13(struct platform_device *pdev)
{
	struct mtk_hdmi *hdmi;
	struct device *dev = &pdev->dev;
	int ret;

	hdmi = FUNC4(dev, sizeof(*hdmi), GFP_KERNEL);
	if (!hdmi)
		return -ENOMEM;

	hdmi->dev = dev;

	ret = FUNC9(hdmi, pdev);
	if (ret)
		return ret;

	hdmi->phy = FUNC5(dev, "hdmi");
	if (FUNC0(hdmi->phy)) {
		ret = FUNC1(hdmi->phy);
		FUNC3(dev, "Failed to get HDMI PHY: %d\n", ret);
		return ret;
	}

	FUNC12(pdev, hdmi);

	ret = FUNC10(hdmi);
	if (ret) {
		FUNC3(dev, "Failed to initialize hdmi output\n");
		return ret;
	}

	FUNC11(dev);

	hdmi->bridge.funcs = &mtk_hdmi_bridge_funcs;
	hdmi->bridge.of_node = pdev->dev.of_node;
	FUNC6(&hdmi->bridge);

	ret = FUNC8(hdmi);
	if (ret) {
		FUNC3(dev, "Failed to enable audio clocks: %d\n", ret);
		goto err_bridge_remove;
	}

	FUNC2(dev, "mediatek hdmi probe success\n");
	return 0;

err_bridge_remove:
	FUNC7(&hdmi->bridge);
	return ret;
}