
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct srpt_port {int dummy; } ;
struct se_portal_group {TYPE_1__* se_tpg_wwn; } ;
struct TYPE_2__ {struct srpt_port* priv; } ;



__attribute__((used)) static struct srpt_port *srpt_tpg_to_sport(struct se_portal_group *tpg)
{
 return tpg->se_tpg_wwn->priv;
}
