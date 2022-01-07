
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isert_cmd {int dummy; } ;
struct iscsi_conn {int cmd_lock; } ;
struct iscsi_cmd {int i_conn_node; } ;


 int EINVAL ;


 struct isert_cmd* iscsit_priv_cmd (struct iscsi_cmd*) ;
 int isert_err (char*,int) ;
 int isert_put_cmd (struct isert_cmd*,int) ;
 int isert_put_nopin (struct iscsi_cmd*,struct iscsi_conn*,int) ;
 int list_del_init (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int
isert_immediate_queue(struct iscsi_conn *conn, struct iscsi_cmd *cmd, int state)
{
 struct isert_cmd *isert_cmd = iscsit_priv_cmd(cmd);
 int ret = 0;

 switch (state) {
 case 129:
  spin_lock_bh(&conn->cmd_lock);
  list_del_init(&cmd->i_conn_node);
  spin_unlock_bh(&conn->cmd_lock);
  isert_put_cmd(isert_cmd, 1);
  break;
 case 128:
  ret = isert_put_nopin(cmd, conn, 0);
  break;
 default:
  isert_err("Unknown immediate state: 0x%02x\n", state);
  ret = -EINVAL;
  break;
 }

 return ret;
}
