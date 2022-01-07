
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isert_conn {int dummy; } ;
struct isert_cmd {struct iser_rx_desc* rx_desc; struct iscsi_cmd* iscsi_cmd; struct isert_conn* conn; } ;
struct iser_rx_desc {int dummy; } ;
struct iscsi_conn {struct isert_conn* context; } ;
struct iscsi_cmd {int dummy; } ;


 int TASK_INTERRUPTIBLE ;
 struct iscsi_cmd* iscsit_allocate_cmd (struct iscsi_conn*,int ) ;
 struct isert_cmd* iscsit_priv_cmd (struct iscsi_cmd*) ;
 int isert_err (char*) ;

__attribute__((used)) static struct iscsi_cmd
*isert_allocate_cmd(struct iscsi_conn *conn, struct iser_rx_desc *rx_desc)
{
 struct isert_conn *isert_conn = conn->context;
 struct isert_cmd *isert_cmd;
 struct iscsi_cmd *cmd;

 cmd = iscsit_allocate_cmd(conn, TASK_INTERRUPTIBLE);
 if (!cmd) {
  isert_err("Unable to allocate iscsi_cmd + isert_cmd\n");
  return ((void*)0);
 }
 isert_cmd = iscsit_priv_cmd(cmd);
 isert_cmd->conn = isert_conn;
 isert_cmd->iscsi_cmd = cmd;
 isert_cmd->rx_desc = rx_desc;

 return cmd;
}
