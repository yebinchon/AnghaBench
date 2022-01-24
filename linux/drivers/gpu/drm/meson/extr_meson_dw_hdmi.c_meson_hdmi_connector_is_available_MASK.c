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

/* Variables and functions */
 struct device_node* FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 struct device_node* FUNC1 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC2 (struct device_node*) ; 

__attribute__((used)) static bool FUNC3(struct device *dev)
{
	struct device_node *ep, *remote;

	/* HDMI Connector is on the second port, first endpoint */
	ep = FUNC0(dev->of_node, 1, 0);
	if (!ep)
		return false;

	/* If the endpoint node exists, consider it enabled */
	remote = FUNC1(ep);
	if (remote) {
		FUNC2(ep);
		return true;
	}

	FUNC2(ep);
	FUNC2(remote);

	return false;
}