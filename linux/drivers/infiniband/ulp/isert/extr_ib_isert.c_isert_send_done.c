
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct isert_conn {int conn; TYPE_2__* cm_id; } ;
struct isert_cmd {TYPE_3__* iscsi_cmd; int comp_work; } ;
struct iser_tx_desc {int dummy; } ;
struct ib_wc {scalar_t__ status; int wr_cqe; TYPE_1__* qp; } ;
struct ib_device {int dummy; } ;
struct ib_cq {int dummy; } ;
struct TYPE_6__ {int i_state; } ;
struct TYPE_5__ {struct ib_device* device; } ;
struct TYPE_4__ {struct isert_conn* qp_context; } ;


 scalar_t__ IB_WC_SUCCESS ;
 scalar_t__ IB_WC_WR_FLUSH_ERR ;
 int INIT_WORK (int *,int ) ;




 int ISTATE_SENT_STATUS ;
 struct iser_tx_desc* cqe_to_tx_desc (int ) ;
 int iscsit_cause_connection_reinstatement (int ,int ) ;
 int isert_comp_wq ;
 int isert_completion_put (struct iser_tx_desc*,struct isert_cmd*,struct ib_device*,int) ;
 int isert_dbg (char*,struct isert_cmd*) ;
 int isert_do_control_comp ;
 int isert_print_wc (struct ib_wc*,char*) ;
 int isert_unmap_tx_desc (struct iser_tx_desc*,struct ib_device*) ;
 int queue_work (int ,int *) ;
 struct isert_cmd* tx_desc_to_cmd (struct iser_tx_desc*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void
isert_send_done(struct ib_cq *cq, struct ib_wc *wc)
{
 struct isert_conn *isert_conn = wc->qp->qp_context;
 struct ib_device *ib_dev = isert_conn->cm_id->device;
 struct iser_tx_desc *tx_desc = cqe_to_tx_desc(wc->wr_cqe);
 struct isert_cmd *isert_cmd = tx_desc_to_cmd(tx_desc);

 if (unlikely(wc->status != IB_WC_SUCCESS)) {
  isert_print_wc(wc, "send");
  if (wc->status != IB_WC_WR_FLUSH_ERR)
   iscsit_cause_connection_reinstatement(isert_conn->conn, 0);
  isert_completion_put(tx_desc, isert_cmd, ib_dev, 1);
  return;
 }

 isert_dbg("Cmd %p\n", isert_cmd);

 switch (isert_cmd->iscsi_cmd->i_state) {
 case 129:
 case 131:
 case 130:
 case 128:
  isert_unmap_tx_desc(tx_desc, ib_dev);

  INIT_WORK(&isert_cmd->comp_work, isert_do_control_comp);
  queue_work(isert_comp_wq, &isert_cmd->comp_work);
  return;
 default:
  isert_cmd->iscsi_cmd->i_state = ISTATE_SENT_STATUS;
  isert_completion_put(tx_desc, isert_cmd, ib_dev, 0);
  break;
 }
}
