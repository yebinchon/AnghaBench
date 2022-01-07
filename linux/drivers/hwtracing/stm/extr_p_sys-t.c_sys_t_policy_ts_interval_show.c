
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sys_t_policy_node {int ts_interval; } ;
struct config_item {int dummy; } ;
typedef int ssize_t ;


 int jiffies_to_msecs (int ) ;
 int sprintf (char*,char*,int) ;
 struct sys_t_policy_node* to_pdrv_policy_node (struct config_item*) ;

__attribute__((used)) static ssize_t sys_t_policy_ts_interval_show(struct config_item *item,
          char *page)
{
 struct sys_t_policy_node *pn = to_pdrv_policy_node(item);

 return sprintf(page, "%u\n", jiffies_to_msecs(pn->ts_interval));
}
