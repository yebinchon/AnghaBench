
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config_item {int dummy; } ;
struct config_group {int dummy; } ;


 int config_item_put (struct config_item*) ;

__attribute__((used)) static void
stp_policy_node_drop(struct config_group *group, struct config_item *item)
{
 config_item_put(item);
}
