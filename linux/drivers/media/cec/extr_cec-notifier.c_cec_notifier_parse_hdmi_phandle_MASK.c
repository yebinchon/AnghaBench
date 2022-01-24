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
struct device {int /*<<< orphan*/  of_node; } ;
struct platform_device {struct device dev; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENODEV ; 
 int /*<<< orphan*/  EPROBE_DEFER ; 
 struct device* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 struct platform_device* FUNC2 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC3 (struct device_node*) ; 
 struct device_node* FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct device*) ; 

struct device *FUNC6(struct device *dev)
{
	struct platform_device *hdmi_pdev;
	struct device *hdmi_dev = NULL;
	struct device_node *np;

	np = FUNC4(dev->of_node, "hdmi-phandle", 0);

	if (!np) {
		FUNC1(dev, "Failed to find HDMI node in device tree\n");
		return FUNC0(-ENODEV);
	}
	hdmi_pdev = FUNC2(np);
	FUNC3(np);
	if (hdmi_pdev) {
		hdmi_dev = &hdmi_pdev->dev;
		/*
		 * Note that the device struct is only used as a key into the
		 * cec_notifiers list, it is never actually accessed.
		 * So we decrement the reference here so we don't leak
		 * memory.
		 */
		FUNC5(hdmi_dev);
		return hdmi_dev;
	}
	return FUNC0(-EPROBE_DEFER);
}