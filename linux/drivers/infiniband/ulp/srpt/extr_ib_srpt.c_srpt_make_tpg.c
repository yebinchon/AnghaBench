
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct se_portal_group {int dummy; } ;
struct se_wwn {struct srpt_port* priv; } ;
struct srpt_port {struct se_portal_group port_gid_tpg; struct se_portal_group port_guid_tpg; struct se_wwn port_guid_wwn; struct se_wwn port_gid_wwn; } ;


 struct se_portal_group* ERR_PTR (int) ;
 int SCSI_PROTOCOL_SRP ;
 int WARN_ON_ONCE (int) ;
 int core_tpg_register (struct se_wwn*,struct se_portal_group*,int ) ;

__attribute__((used)) static struct se_portal_group *srpt_make_tpg(struct se_wwn *wwn,
          const char *name)
{
 struct srpt_port *sport = wwn->priv;
 struct se_portal_group *tpg;
 int res;

 WARN_ON_ONCE(wwn != &sport->port_guid_wwn &&
       wwn != &sport->port_gid_wwn);
 tpg = wwn == &sport->port_guid_wwn ? &sport->port_guid_tpg :
  &sport->port_gid_tpg;
 res = core_tpg_register(wwn, tpg, SCSI_PROTOCOL_SRP);
 if (res)
  return ERR_PTR(res);

 return tpg;
}
