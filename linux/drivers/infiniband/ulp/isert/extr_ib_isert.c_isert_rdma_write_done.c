
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct se_cmd {int pi_err; int cmd_kref; } ;
struct isert_device {int ib_device; } ;
struct isert_conn {int conn; struct isert_device* device; } ;
struct TYPE_7__ {TYPE_2__* reg; } ;
struct isert_cmd {TYPE_4__* iscsi_cmd; TYPE_3__ rw; } ;
struct iser_tx_desc {int dummy; } ;
struct ib_wc {scalar_t__ status; int wr_cqe; TYPE_1__* qp; } ;
struct ib_cq {int dummy; } ;
struct TYPE_8__ {struct se_cmd se_cmd; } ;
struct TYPE_6__ {int mr; } ;
struct TYPE_5__ {struct isert_conn* qp_context; } ;


 scalar_t__ IB_WC_SUCCESS ;
 scalar_t__ IB_WC_WR_FLUSH_ERR ;
 struct iser_tx_desc* cqe_to_tx_desc (int ) ;
 int iscsit_cause_connection_reinstatement (int ,int ) ;
 int isert_check_pi_status (struct se_cmd*,int ) ;
 int isert_completion_put (struct iser_tx_desc*,struct isert_cmd*,int ,int) ;
 int isert_dbg (char*,struct isert_cmd*) ;
 int isert_print_wc (struct ib_wc*,char*) ;
 int isert_put_response (int ,TYPE_4__*) ;
 int isert_rdma_rw_ctx_destroy (struct isert_cmd*,struct isert_conn*) ;
 int kref_get (int *) ;
 int pr_warn_ratelimited (char*,int) ;
 int transport_generic_request_failure (struct se_cmd*,int ) ;
 struct isert_cmd* tx_desc_to_cmd (struct iser_tx_desc*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void
isert_rdma_write_done(struct ib_cq *cq, struct ib_wc *wc)
{
 struct isert_conn *isert_conn = wc->qp->qp_context;
 struct isert_device *device = isert_conn->device;
 struct iser_tx_desc *desc = cqe_to_tx_desc(wc->wr_cqe);
 struct isert_cmd *isert_cmd = tx_desc_to_cmd(desc);
 struct se_cmd *cmd = &isert_cmd->iscsi_cmd->se_cmd;
 int ret = 0;

 if (unlikely(wc->status != IB_WC_SUCCESS)) {
  isert_print_wc(wc, "rdma write");
  if (wc->status != IB_WC_WR_FLUSH_ERR)
   iscsit_cause_connection_reinstatement(isert_conn->conn, 0);
  isert_completion_put(desc, isert_cmd, device->ib_device, 1);
  return;
 }

 isert_dbg("Cmd %p\n", isert_cmd);

 ret = isert_check_pi_status(cmd, isert_cmd->rw.reg->mr);
 isert_rdma_rw_ctx_destroy(isert_cmd, isert_conn);

 if (ret) {






  kref_get(&cmd->cmd_kref);
  transport_generic_request_failure(cmd, cmd->pi_err);
 } else {



  ret = isert_put_response(isert_conn->conn, isert_cmd->iscsi_cmd);
  if (ret)
   pr_warn_ratelimited("isert_put_response() ret: %d\n", ret);
 }
}
