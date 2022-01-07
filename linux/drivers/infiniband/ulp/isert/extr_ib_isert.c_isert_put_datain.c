
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct se_cmd {int data_length; } ;
struct isert_conn {int dummy; } ;
struct ib_send_wr {int dummy; } ;
struct ib_cqe {int done; } ;
struct TYPE_3__ {struct ib_send_wr send_wr; int iscsi_header; struct ib_cqe tx_cqe; } ;
struct isert_cmd {TYPE_1__ tx_desc; int rx_desc; } ;
struct iscsi_scsi_rsp {int dummy; } ;
struct iscsi_conn {struct isert_conn* context; } ;
struct iscsi_cmd {struct se_cmd se_cmd; } ;


 int iscsit_build_rsp_pdu (struct iscsi_cmd*,struct iscsi_conn*,int,struct iscsi_scsi_rsp*) ;
 struct isert_cmd* iscsit_priv_cmd (struct iscsi_cmd*) ;
 int isert_create_send_desc (struct isert_conn*,struct isert_cmd*,TYPE_1__*) ;
 int isert_dbg (char*,struct isert_cmd*,int) ;
 int isert_err (char*,int) ;
 int isert_init_send_wr (struct isert_conn*,struct isert_cmd*,struct ib_send_wr*) ;
 int isert_init_tx_hdrs (struct isert_conn*,TYPE_1__*) ;
 int isert_post_recv (struct isert_conn*,int ) ;
 scalar_t__ isert_prot_cmd (struct isert_conn*,struct se_cmd*) ;
 int isert_rdma_rw_ctx_post (struct isert_cmd*,struct isert_conn*,struct ib_cqe*,struct ib_send_wr*) ;
 int isert_rdma_write_done ;

__attribute__((used)) static int
isert_put_datain(struct iscsi_conn *conn, struct iscsi_cmd *cmd)
{
 struct se_cmd *se_cmd = &cmd->se_cmd;
 struct isert_cmd *isert_cmd = iscsit_priv_cmd(cmd);
 struct isert_conn *isert_conn = conn->context;
 struct ib_cqe *cqe = ((void*)0);
 struct ib_send_wr *chain_wr = ((void*)0);
 int rc;

 isert_dbg("Cmd: %p RDMA_WRITE data_length: %u\n",
   isert_cmd, se_cmd->data_length);

 if (isert_prot_cmd(isert_conn, se_cmd)) {
  isert_cmd->tx_desc.tx_cqe.done = isert_rdma_write_done;
  cqe = &isert_cmd->tx_desc.tx_cqe;
 } else {



  isert_create_send_desc(isert_conn, isert_cmd,
           &isert_cmd->tx_desc);
  iscsit_build_rsp_pdu(cmd, conn, 1, (struct iscsi_scsi_rsp *)
         &isert_cmd->tx_desc.iscsi_header);
  isert_init_tx_hdrs(isert_conn, &isert_cmd->tx_desc);
  isert_init_send_wr(isert_conn, isert_cmd,
       &isert_cmd->tx_desc.send_wr);

  rc = isert_post_recv(isert_conn, isert_cmd->rx_desc);
  if (rc) {
   isert_err("ib_post_recv failed with %d\n", rc);
   return rc;
  }

  chain_wr = &isert_cmd->tx_desc.send_wr;
 }

 rc = isert_rdma_rw_ctx_post(isert_cmd, isert_conn, cqe, chain_wr);
 isert_dbg("Cmd: %p posted RDMA_WRITE for iSER Data READ rc: %d\n",
    isert_cmd, rc);
 return rc;
}
