
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isert_conn {int dummy; } ;
struct isert_cmd {int dummy; } ;
struct iscsi_conn {int cmd_lock; struct isert_conn* context; } ;
struct iscsi_cmd {scalar_t__ data_direction; int i_conn_node; } ;


 scalar_t__ DMA_TO_DEVICE ;
 struct isert_cmd* iscsit_priv_cmd (struct iscsi_cmd*) ;
 int iscsit_stop_dataout_timer (struct iscsi_cmd*) ;
 int isert_rdma_rw_ctx_destroy (struct isert_cmd*,struct isert_conn*) ;
 int list_del_init (int *) ;
 int list_empty (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void
isert_aborted_task(struct iscsi_conn *conn, struct iscsi_cmd *cmd)
{
 struct isert_cmd *isert_cmd = iscsit_priv_cmd(cmd);
 struct isert_conn *isert_conn = conn->context;

 spin_lock_bh(&conn->cmd_lock);
 if (!list_empty(&cmd->i_conn_node))
  list_del_init(&cmd->i_conn_node);
 spin_unlock_bh(&conn->cmd_lock);

 if (cmd->data_direction == DMA_TO_DEVICE)
  iscsit_stop_dataout_timer(cmd);
 isert_rdma_rw_ctx_destroy(isert_cmd, isert_conn);
}
