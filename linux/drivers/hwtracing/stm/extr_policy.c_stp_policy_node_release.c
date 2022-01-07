
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stp_policy_node {int dummy; } ;
struct config_item {int dummy; } ;


 int kfree (struct stp_policy_node*) ;
 struct stp_policy_node* to_stp_policy_node (struct config_item*) ;

__attribute__((used)) static void stp_policy_node_release(struct config_item *item)
{
 struct stp_policy_node *node = to_stp_policy_node(item);

 kfree(node);
}
