
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct isert_conn {scalar_t__ snd_w_inv; } ;
struct TYPE_3__ {int done; } ;
struct iser_tx_desc {int num_sge; int * tx_sg; TYPE_1__ tx_cqe; } ;
struct isert_cmd {struct iser_tx_desc tx_desc; scalar_t__ inv_rkey; } ;
struct TYPE_4__ {scalar_t__ invalidate_rkey; } ;
struct ib_send_wr {int send_flags; int num_sge; int * sg_list; int opcode; TYPE_2__ ex; TYPE_1__* wr_cqe; } ;


 int IB_SEND_SIGNALED ;
 int IB_WR_SEND ;
 int IB_WR_SEND_WITH_INV ;
 int isert_send_done ;

__attribute__((used)) static void
isert_init_send_wr(struct isert_conn *isert_conn, struct isert_cmd *isert_cmd,
     struct ib_send_wr *send_wr)
{
 struct iser_tx_desc *tx_desc = &isert_cmd->tx_desc;

 tx_desc->tx_cqe.done = isert_send_done;
 send_wr->wr_cqe = &tx_desc->tx_cqe;

 if (isert_conn->snd_w_inv && isert_cmd->inv_rkey) {
  send_wr->opcode = IB_WR_SEND_WITH_INV;
  send_wr->ex.invalidate_rkey = isert_cmd->inv_rkey;
 } else {
  send_wr->opcode = IB_WR_SEND;
 }

 send_wr->sg_list = &tx_desc->tx_sg[0];
 send_wr->num_sge = isert_cmd->tx_desc.num_sge;
 send_wr->send_flags = IB_SEND_SIGNALED;
}
