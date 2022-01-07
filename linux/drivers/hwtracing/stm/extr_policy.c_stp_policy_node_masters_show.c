
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stp_policy_node {int first_master; int last_master; } ;
struct config_item {int dummy; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,int,int) ;
 struct stp_policy_node* to_stp_policy_node (struct config_item*) ;

__attribute__((used)) static ssize_t
stp_policy_node_masters_show(struct config_item *item, char *page)
{
 struct stp_policy_node *policy_node = to_stp_policy_node(item);
 ssize_t count;

 count = sprintf(page, "%u %u\n", policy_node->first_master,
   policy_node->last_master);

 return count;
}
