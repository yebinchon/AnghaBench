
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stp_policy_node {int dummy; } ;
struct config_item {int dummy; } ;


 void* stp_policy_node_priv (struct stp_policy_node*) ;
 struct stp_policy_node* to_stp_policy_node (struct config_item*) ;

void *to_pdrv_policy_node(struct config_item *item)
{
 struct stp_policy_node *node = to_stp_policy_node(item);

 return stp_policy_node_priv(node);
}
