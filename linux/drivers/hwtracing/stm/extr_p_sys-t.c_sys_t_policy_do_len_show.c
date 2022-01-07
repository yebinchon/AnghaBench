
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sys_t_policy_node {int do_len; } ;
struct config_item {int dummy; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,int) ;
 struct sys_t_policy_node* to_pdrv_policy_node (struct config_item*) ;

__attribute__((used)) static ssize_t sys_t_policy_do_len_show(struct config_item *item,
          char *page)
{
 struct sys_t_policy_node *pn = to_pdrv_policy_node(item);

 return sprintf(page, "%d\n", pn->do_len);
}
