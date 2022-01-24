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
struct device {struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct device_node {int dummy; } ;
struct component_match {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  compare_of ; 
 int FUNC0 (struct device*,int /*<<< orphan*/ *,struct component_match*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,struct component_match**,int /*<<< orphan*/ ,struct device_node*) ; 
 int /*<<< orphan*/  kirin_drm_ops ; 
 struct device_node* FUNC2 (struct device_node*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device_node*) ; 

__attribute__((used)) static int FUNC4(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct device_node *np = dev->of_node;
	struct component_match *match = NULL;
	struct device_node *remote;

	remote = FUNC2(np, 0, 0);
	if (!remote)
		return -ENODEV;

	FUNC1(dev, &match, compare_of, remote);
	FUNC3(remote);

	return FUNC0(dev, &kirin_drm_ops, match);
}