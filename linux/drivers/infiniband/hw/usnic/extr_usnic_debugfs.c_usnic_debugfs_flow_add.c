
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usnic_ib_qp_grp_flow {int dentry_name; int dbgfs_dentry; TYPE_1__* flow; } ;
struct TYPE_2__ {int flow_id; } ;


 int S_IRUGO ;
 int debugfs_create_file (int ,int ,int ,struct usnic_ib_qp_grp_flow*,int *) ;
 int flowinfo_ops ;
 int flows_dentry ;
 int scnprintf (int ,int,char*,int ) ;

void usnic_debugfs_flow_add(struct usnic_ib_qp_grp_flow *qp_flow)
{
 scnprintf(qp_flow->dentry_name, sizeof(qp_flow->dentry_name),
   "%u", qp_flow->flow->flow_id);
 qp_flow->dbgfs_dentry = debugfs_create_file(qp_flow->dentry_name,
       S_IRUGO,
       flows_dentry,
       qp_flow,
       &flowinfo_ops);
}
