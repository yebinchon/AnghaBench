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
struct endpoint_list {int dummy; } ;
struct device_node {int dummy; } ;
struct device {int dummy; } ;
struct component_match {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct device_node*) ; 
 int /*<<< orphan*/  compare_of ; 
 int /*<<< orphan*/  FUNC1 (struct device*,struct component_match**,int /*<<< orphan*/ ,struct device_node*) ; 
 scalar_t__ FUNC2 (struct device_node*) ; 
 scalar_t__ FUNC3 (struct device_node*) ; 
 scalar_t__ FUNC4 (struct device_node*) ; 
 scalar_t__ FUNC5 (struct device_node*) ; 
 scalar_t__ FUNC6 (struct device_node*) ; 
 scalar_t__ FUNC7 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC8 (struct endpoint_list*,struct device_node*,int) ; 

__attribute__((used)) static int FUNC9(struct device *dev,
				   struct endpoint_list *list,
				   struct component_match **match,
				   struct device_node *node)
{
	int count = 0;

	/*
	 * The frontend has been disabled in some of our old device
	 * trees. If we find a node that is the frontend and is
	 * disabled, we should just follow through and parse its
	 * child, but without adding it to the component list.
	 * Otherwise, we obviously want to add it to the list.
	 */
	if (!FUNC5(node) &&
	    !FUNC2(node))
		return 0;

	/*
	 * The connectors will be the last nodes in our pipeline, we
	 * can just bail out.
	 */
	if (FUNC3(node))
		return 0;

	/*
	 * If the device is either just a regular device, or an
	 * enabled frontend supported by the driver, we add it to our
	 * component list.
	 */
	if (!(FUNC5(node) ||
	      FUNC4(node)) ||
	    (FUNC6(node) &&
	     FUNC2(node))) {
		/* Add current component */
		FUNC0("Adding component %pOF\n", node);
		FUNC1(dev, match, compare_of, node);
		count++;
	}

	/* each node has at least one output */
	FUNC8(list, node, 1);

	/* TCON TOP has second and third output */
	if (FUNC7(node)) {
		FUNC8(list, node, 3);
		FUNC8(list, node, 5);
	}

	return count;
}