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
struct component_match {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct component_match*) ; 
 int FUNC1 (struct component_match*) ; 
 int FUNC2 (struct device*,int /*<<< orphan*/ *,struct component_match*) ; 
 struct component_match* FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 
 int /*<<< orphan*/  rockchip_drm_ops ; 
 int FUNC5 (struct device*) ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct component_match *match = NULL;
	int ret;

	ret = FUNC5(dev);
	if (ret)
		return ret;

	match = FUNC3(dev);
	if (FUNC0(match))
		return FUNC1(match);

	ret = FUNC2(dev, &rockchip_drm_ops, match);
	if (ret < 0) {
		FUNC4(dev);
		return ret;
	}

	return 0;
}