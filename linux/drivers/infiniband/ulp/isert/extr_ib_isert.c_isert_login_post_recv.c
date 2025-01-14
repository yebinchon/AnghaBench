
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct isert_conn {int qp; TYPE_4__* login_req_buf; TYPE_2__* device; int login_req_dma; } ;
struct ib_sge {int num_sge; struct ib_sge* sg_list; TYPE_3__* wr_cqe; int lkey; int length; int addr; } ;
struct ib_recv_wr {int num_sge; struct ib_recv_wr* sg_list; TYPE_3__* wr_cqe; int lkey; int length; int addr; } ;
struct TYPE_7__ {int done; } ;
struct TYPE_8__ {TYPE_3__ rx_cqe; } ;
struct TYPE_6__ {TYPE_1__* pd; } ;
struct TYPE_5__ {int local_dma_lkey; } ;


 int ISER_RX_PAYLOAD_SIZE ;
 int ib_post_recv (int ,struct ib_sge*,int *) ;
 int isert_dbg (char*,int ,int ,int ) ;
 int isert_err (char*,int) ;
 int isert_login_recv_done ;
 int memset (struct ib_sge*,int ,int) ;

__attribute__((used)) static int
isert_login_post_recv(struct isert_conn *isert_conn)
{
 struct ib_recv_wr rx_wr;
 struct ib_sge sge;
 int ret;

 memset(&sge, 0, sizeof(struct ib_sge));
 sge.addr = isert_conn->login_req_dma;
 sge.length = ISER_RX_PAYLOAD_SIZE;
 sge.lkey = isert_conn->device->pd->local_dma_lkey;

 isert_dbg("Setup sge: addr: %llx length: %d 0x%08x\n",
  sge.addr, sge.length, sge.lkey);

 isert_conn->login_req_buf->rx_cqe.done = isert_login_recv_done;

 memset(&rx_wr, 0, sizeof(struct ib_recv_wr));
 rx_wr.wr_cqe = &isert_conn->login_req_buf->rx_cqe;
 rx_wr.sg_list = &sge;
 rx_wr.num_sge = 1;

 ret = ib_post_recv(isert_conn->qp, &rx_wr, ((void*)0));
 if (ret)
  isert_err("ib_post_recv() failed: %d\n", ret);

 return ret;
}
