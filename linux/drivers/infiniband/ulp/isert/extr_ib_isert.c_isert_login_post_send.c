
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct isert_conn {int qp; TYPE_2__* cm_id; } ;
struct TYPE_3__ {int done; } ;
struct iser_tx_desc {int num_sge; int tx_sg; TYPE_1__ tx_cqe; int dma_addr; } ;
struct ib_send_wr {int send_flags; int opcode; int num_sge; int sg_list; TYPE_1__* wr_cqe; int * next; } ;
struct ib_device {int dummy; } ;
struct TYPE_4__ {struct ib_device* device; } ;


 int DMA_TO_DEVICE ;
 int IB_SEND_SIGNALED ;
 int IB_WR_SEND ;
 int ISER_HEADERS_LEN ;
 int ib_dma_sync_single_for_device (struct ib_device*,int ,int ,int ) ;
 int ib_post_send (int ,struct ib_send_wr*,int *) ;
 int isert_err (char*,int) ;
 int isert_login_send_done ;

__attribute__((used)) static int
isert_login_post_send(struct isert_conn *isert_conn, struct iser_tx_desc *tx_desc)
{
 struct ib_device *ib_dev = isert_conn->cm_id->device;
 struct ib_send_wr send_wr;
 int ret;

 ib_dma_sync_single_for_device(ib_dev, tx_desc->dma_addr,
          ISER_HEADERS_LEN, DMA_TO_DEVICE);

 tx_desc->tx_cqe.done = isert_login_send_done;

 send_wr.next = ((void*)0);
 send_wr.wr_cqe = &tx_desc->tx_cqe;
 send_wr.sg_list = tx_desc->tx_sg;
 send_wr.num_sge = tx_desc->num_sge;
 send_wr.opcode = IB_WR_SEND;
 send_wr.send_flags = IB_SEND_SIGNALED;

 ret = ib_post_send(isert_conn->qp, &send_wr, ((void*)0));
 if (ret)
  isert_err("ib_post_send() failed, ret: %d\n", ret);

 return ret;
}
