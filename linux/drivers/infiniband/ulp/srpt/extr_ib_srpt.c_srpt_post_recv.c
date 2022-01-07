
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int done; } ;
struct TYPE_4__ {TYPE_1__ cqe; scalar_t__ offset; scalar_t__ dma; } ;
struct srpt_recv_ioctx {TYPE_2__ ioctx; } ;
struct srpt_rdma_ch {int qp; } ;
struct srpt_device {int srq; scalar_t__ use_srq; int lkey; } ;
struct ib_sge {int lkey; int length; scalar_t__ addr; } ;
struct ib_recv_wr {int num_sge; struct ib_sge* sg_list; int * next; TYPE_1__* wr_cqe; } ;


 int BUG_ON (int) ;
 int ib_post_recv (int ,struct ib_recv_wr*,int *) ;
 int ib_post_srq_recv (int ,struct ib_recv_wr*,int *) ;
 int srp_max_req_size ;
 int srpt_recv_done ;

__attribute__((used)) static int srpt_post_recv(struct srpt_device *sdev, struct srpt_rdma_ch *ch,
     struct srpt_recv_ioctx *ioctx)
{
 struct ib_sge list;
 struct ib_recv_wr wr;

 BUG_ON(!sdev);
 list.addr = ioctx->ioctx.dma + ioctx->ioctx.offset;
 list.length = srp_max_req_size;
 list.lkey = sdev->lkey;

 ioctx->ioctx.cqe.done = srpt_recv_done;
 wr.wr_cqe = &ioctx->ioctx.cqe;
 wr.next = ((void*)0);
 wr.sg_list = &list;
 wr.num_sge = 1;

 if (sdev->use_srq)
  return ib_post_srq_recv(sdev->srq, &wr, ((void*)0));
 else
  return ib_post_recv(ch->qp, &wr, ((void*)0));
}
