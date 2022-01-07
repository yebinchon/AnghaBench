
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int srp_sq_size; } ;
struct srpt_port {TYPE_1__ port_attrib; } ;
struct se_portal_group {int dummy; } ;
struct config_item {int dummy; } ;
typedef int ssize_t ;


 struct se_portal_group* attrib_to_tpg (struct config_item*) ;
 int sprintf (char*,char*,int) ;
 struct srpt_port* srpt_tpg_to_sport (struct se_portal_group*) ;

__attribute__((used)) static ssize_t srpt_tpg_attrib_srp_sq_size_show(struct config_item *item,
  char *page)
{
 struct se_portal_group *se_tpg = attrib_to_tpg(item);
 struct srpt_port *sport = srpt_tpg_to_sport(se_tpg);

 return sprintf(page, "%u\n", sport->port_attrib.srp_sq_size);
}
