
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ib_send_wr {int opcode; int * next; int send_flags; int num_sge; int sg_list; int * wr_cqe; } ;
struct TYPE_4__ {struct ib_send_wr wr; } ;
struct iser_tx_desc {TYPE_2__ reg_wr; struct ib_send_wr inv_wr; int num_sge; int tx_sg; int cqe; int dma_addr; struct ib_send_wr send_wr; } ;
struct ib_conn {int qp; TYPE_1__* device; } ;
struct TYPE_3__ {int ib_device; } ;


 int DMA_TO_DEVICE ;
 int IB_SEND_SIGNALED ;
 int IB_WR_SEND ;
 int ISER_HEADERS_LEN ;
 int ib_dma_sync_single_for_device (int ,int ,int ,int ) ;
 int ib_post_send (int ,struct ib_send_wr*,int *) ;
 int iser_err (char*,int,int ) ;

int iser_post_send(struct ib_conn *ib_conn, struct iser_tx_desc *tx_desc,
     bool signal)
{
 struct ib_send_wr *wr = &tx_desc->send_wr;
 struct ib_send_wr *first_wr;
 int ib_ret;

 ib_dma_sync_single_for_device(ib_conn->device->ib_device,
          tx_desc->dma_addr, ISER_HEADERS_LEN,
          DMA_TO_DEVICE);

 wr->next = ((void*)0);
 wr->wr_cqe = &tx_desc->cqe;
 wr->sg_list = tx_desc->tx_sg;
 wr->num_sge = tx_desc->num_sge;
 wr->opcode = IB_WR_SEND;
 wr->send_flags = signal ? IB_SEND_SIGNALED : 0;

 if (tx_desc->inv_wr.next)
  first_wr = &tx_desc->inv_wr;
 else if (tx_desc->reg_wr.wr.next)
  first_wr = &tx_desc->reg_wr.wr;
 else
  first_wr = wr;

 ib_ret = ib_post_send(ib_conn->qp, first_wr, ((void*)0));
 if (ib_ret)
  iser_err("ib_post_send failed, ret:%d opcode:%d\n",
    ib_ret, wr->opcode);

 return ib_ret;
}
