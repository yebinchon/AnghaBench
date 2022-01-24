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
struct msi_domain_info {struct its_node* data; int /*<<< orphan*/ * ops; } ;
struct its_node {int /*<<< orphan*/  msi_domain_flags; } ;
struct irq_domain {struct msi_domain_info* host_data; int /*<<< orphan*/  flags; int /*<<< orphan*/  parent; } ;
struct fwnode_handle {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DOMAIN_BUS_NEXUS ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct irq_domain* FUNC0 (struct fwnode_handle*,int /*<<< orphan*/ *,struct its_node*) ; 
 int /*<<< orphan*/  FUNC1 (struct irq_domain*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  its_domain_ops ; 
 int /*<<< orphan*/  its_msi_domain_ops ; 
 int /*<<< orphan*/  its_parent ; 
 int /*<<< orphan*/  FUNC2 (struct msi_domain_info*) ; 
 struct msi_domain_info* FUNC3 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct fwnode_handle *handle, struct its_node *its)
{
	struct irq_domain *inner_domain;
	struct msi_domain_info *info;

	info = FUNC3(sizeof(*info), GFP_KERNEL);
	if (!info)
		return -ENOMEM;

	inner_domain = FUNC0(handle, &its_domain_ops, its);
	if (!inner_domain) {
		FUNC2(info);
		return -ENOMEM;
	}

	inner_domain->parent = its_parent;
	FUNC1(inner_domain, DOMAIN_BUS_NEXUS);
	inner_domain->flags |= its->msi_domain_flags;
	info->ops = &its_msi_domain_ops;
	info->data = its;
	inner_domain->host_data = info;

	return 0;
}