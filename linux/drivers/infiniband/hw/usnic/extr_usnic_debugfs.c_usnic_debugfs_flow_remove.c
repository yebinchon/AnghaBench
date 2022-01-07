
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usnic_ib_qp_grp_flow {int dbgfs_dentry; } ;


 int debugfs_remove (int ) ;

void usnic_debugfs_flow_remove(struct usnic_ib_qp_grp_flow *qp_flow)
{
 debugfs_remove(qp_flow->dbgfs_dentry);
}
