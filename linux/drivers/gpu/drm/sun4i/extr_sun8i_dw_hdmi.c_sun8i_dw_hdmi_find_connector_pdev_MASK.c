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
struct platform_device {int dummy; } ;
struct device_node {int dummy; } ;
struct device {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (struct device_node*,char*) ; 
 struct platform_device* FUNC1 (struct device_node*) ; 
 struct device_node* FUNC2 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct device_node*) ; 

__attribute__((used)) static int FUNC4(struct device *dev,
					     struct platform_device **pdev_out)
{
	struct platform_device *pdev;
	struct device_node *remote;

	remote = FUNC2(dev->of_node, 1, -1);
	if (!remote)
		return -ENODEV;

	if (!FUNC0(remote, "hdmi-connector")) {
		FUNC3(remote);
		return -ENODEV;
	}

	pdev = FUNC1(remote);
	FUNC3(remote);
	if (!pdev)
		return -ENODEV;

	*pdev_out = pdev;
	return 0;
}