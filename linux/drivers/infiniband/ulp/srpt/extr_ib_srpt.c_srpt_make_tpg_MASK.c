#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct se_portal_group {int dummy; } ;
struct se_wwn {struct srpt_port* priv; } ;
struct srpt_port {struct se_portal_group port_gid_tpg; struct se_portal_group port_guid_tpg; struct se_wwn port_guid_wwn; struct se_wwn port_gid_wwn; } ;

/* Variables and functions */
 struct se_portal_group* FUNC0 (int) ; 
 int /*<<< orphan*/  SCSI_PROTOCOL_SRP ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (struct se_wwn*,struct se_portal_group*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct se_portal_group *FUNC3(struct se_wwn *wwn,
					     const char *name)
{
	struct srpt_port *sport = wwn->priv;
	struct se_portal_group *tpg;
	int res;

	FUNC1(wwn != &sport->port_guid_wwn &&
		     wwn != &sport->port_gid_wwn);
	tpg = wwn == &sport->port_guid_wwn ? &sport->port_guid_tpg :
		&sport->port_gid_tpg;
	res = FUNC2(wwn, tpg, SCSI_PROTOCOL_SRP);
	if (res)
		return FUNC0(res);

	return tpg;
}