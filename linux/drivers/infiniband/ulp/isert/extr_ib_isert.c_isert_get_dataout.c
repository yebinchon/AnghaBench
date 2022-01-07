
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int done; } ;
struct TYPE_5__ {TYPE_3__ tx_cqe; } ;
struct isert_cmd {TYPE_2__ tx_desc; } ;
struct iscsi_conn {int context; } ;
struct TYPE_4__ {int data_length; } ;
struct iscsi_cmd {int write_data_done; TYPE_1__ se_cmd; } ;


 struct isert_cmd* iscsit_priv_cmd (struct iscsi_cmd*) ;
 int isert_dbg (char*,struct isert_cmd*,int,...) ;
 int isert_rdma_read_done ;
 int isert_rdma_rw_ctx_post (struct isert_cmd*,int ,TYPE_3__*,int *) ;

__attribute__((used)) static int
isert_get_dataout(struct iscsi_conn *conn, struct iscsi_cmd *cmd, bool recovery)
{
 struct isert_cmd *isert_cmd = iscsit_priv_cmd(cmd);
 int ret;

 isert_dbg("Cmd: %p RDMA_READ data_length: %u write_data_done: %u\n",
   isert_cmd, cmd->se_cmd.data_length, cmd->write_data_done);

 isert_cmd->tx_desc.tx_cqe.done = isert_rdma_read_done;
 ret = isert_rdma_rw_ctx_post(isert_cmd, conn->context,
         &isert_cmd->tx_desc.tx_cqe, ((void*)0));

 isert_dbg("Cmd: %p posted RDMA_READ memory for ISER Data WRITE rc: %d\n",
   isert_cmd, ret);
 return ret;
}
