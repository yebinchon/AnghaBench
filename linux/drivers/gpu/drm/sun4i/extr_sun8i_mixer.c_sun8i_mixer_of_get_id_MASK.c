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
struct of_endpoint {int id; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 struct device_node* FUNC0 (struct device_node*,int,int) ; 
 struct device_node* FUNC1 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC2 (struct device_node*,struct of_endpoint*) ; 
 int /*<<< orphan*/  FUNC3 (struct device_node*) ; 

__attribute__((used)) static int FUNC4(struct device_node *node)
{
	struct device_node *ep, *remote;
	struct of_endpoint of_ep;

	/* Output port is 1, and we want the first endpoint. */
	ep = FUNC0(node, 1, -1);
	if (!ep)
		return -EINVAL;

	remote = FUNC1(ep);
	FUNC3(ep);
	if (!remote)
		return -EINVAL;

	FUNC2(remote, &of_ep);
	FUNC3(remote);
	return of_ep.id;
}