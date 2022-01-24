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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  compare_of ; 
 int FUNC1 (struct device*,int /*<<< orphan*/ *,struct component_match*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,struct component_match**,int /*<<< orphan*/ ,struct device_node*) ; 
 struct device_node* FUNC5 (struct device_node*,struct device_node*) ; 
 int /*<<< orphan*/  sti_ops ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct device_node *node = dev->of_node;
	struct device_node *child_np;
	struct component_match *match = NULL;

	FUNC3(dev, FUNC0(32));

	FUNC2(dev);

	child_np = FUNC5(node, NULL);

	while (child_np) {
		FUNC4(dev, &match, compare_of,
					   child_np);
		child_np = FUNC5(node, child_np);
	}

	return FUNC1(dev, &sti_ops, match);
}