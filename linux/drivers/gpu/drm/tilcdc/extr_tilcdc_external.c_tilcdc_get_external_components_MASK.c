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
struct device_node {int dummy; } ;
struct device {int /*<<< orphan*/  of_node; } ;
struct component_match {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  dev_match_of ; 
 int /*<<< orphan*/  FUNC0 (struct device*,struct component_match**,int /*<<< orphan*/ ,struct device_node*) ; 
 int /*<<< orphan*/  FUNC1 (struct device_node*,char*) ; 
 struct device_node* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device_node*) ; 

int FUNC4(struct device *dev,
				   struct component_match **match)
{
	struct device_node *node;

	node = FUNC2(dev->of_node, 0, 0);

	if (!FUNC1(node, "nxp,tda998x")) {
		FUNC3(node);
		return 0;
	}

	if (match)
		FUNC0(dev, match, dev_match_of, node);
	FUNC3(node);
	return 1;
}