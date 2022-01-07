
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct srpt_port {int enabled; } ;
struct se_portal_group {int dummy; } ;


 int core_tpg_deregister (struct se_portal_group*) ;
 struct srpt_port* srpt_tpg_to_sport (struct se_portal_group*) ;

__attribute__((used)) static void srpt_drop_tpg(struct se_portal_group *tpg)
{
 struct srpt_port *sport = srpt_tpg_to_sport(tpg);

 sport->enabled = 0;
 core_tpg_deregister(tpg);
}
