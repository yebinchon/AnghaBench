
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct srpt_port {int enabled; } ;
struct se_portal_group {int dummy; } ;
struct config_item {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int snprintf (char*,int ,char*,int) ;
 struct srpt_port* srpt_tpg_to_sport (struct se_portal_group*) ;
 struct se_portal_group* to_tpg (struct config_item*) ;

__attribute__((used)) static ssize_t srpt_tpg_enable_show(struct config_item *item, char *page)
{
 struct se_portal_group *se_tpg = to_tpg(item);
 struct srpt_port *sport = srpt_tpg_to_sport(se_tpg);

 return snprintf(page, PAGE_SIZE, "%d\n", sport->enabled);
}
