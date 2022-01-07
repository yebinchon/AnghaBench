
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msi_domain_info {struct its_node* data; int * ops; } ;
struct its_node {int msi_domain_flags; } ;
struct irq_domain {struct msi_domain_info* host_data; int flags; int parent; } ;
struct fwnode_handle {int dummy; } ;


 int DOMAIN_BUS_NEXUS ;
 int ENOMEM ;
 int GFP_KERNEL ;
 struct irq_domain* irq_domain_create_tree (struct fwnode_handle*,int *,struct its_node*) ;
 int irq_domain_update_bus_token (struct irq_domain*,int ) ;
 int its_domain_ops ;
 int its_msi_domain_ops ;
 int its_parent ;
 int kfree (struct msi_domain_info*) ;
 struct msi_domain_info* kzalloc (int,int ) ;

__attribute__((used)) static int its_init_domain(struct fwnode_handle *handle, struct its_node *its)
{
 struct irq_domain *inner_domain;
 struct msi_domain_info *info;

 info = kzalloc(sizeof(*info), GFP_KERNEL);
 if (!info)
  return -ENOMEM;

 inner_domain = irq_domain_create_tree(handle, &its_domain_ops, its);
 if (!inner_domain) {
  kfree(info);
  return -ENOMEM;
 }

 inner_domain->parent = its_parent;
 irq_domain_update_bus_token(inner_domain, DOMAIN_BUS_NEXUS);
 inner_domain->flags |= its->msi_domain_flags;
 info->ops = &its_msi_domain_ops;
 info->data = its;
 inner_domain->host_data = info;

 return 0;
}
