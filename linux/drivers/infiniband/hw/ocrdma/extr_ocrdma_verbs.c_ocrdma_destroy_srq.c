
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_4__ {int len; scalar_t__ pa; } ;
struct ocrdma_srq {int rqe_wr_id_tbl; int idx_bit_fields; TYPE_2__ rq; TYPE_1__* pd; } ;
struct ocrdma_dev {int dummy; } ;
struct ib_udata {int dummy; } ;
struct ib_srq {int device; } ;
struct TYPE_3__ {scalar_t__ uctx; } ;


 int PAGE_ALIGN (int ) ;
 struct ocrdma_dev* get_ocrdma_dev (int ) ;
 struct ocrdma_srq* get_ocrdma_srq (struct ib_srq*) ;
 int kfree (int ) ;
 int ocrdma_del_mmap (scalar_t__,int ,int ) ;
 int ocrdma_mbx_destroy_srq (struct ocrdma_dev*,struct ocrdma_srq*) ;

void ocrdma_destroy_srq(struct ib_srq *ibsrq, struct ib_udata *udata)
{
 struct ocrdma_srq *srq;
 struct ocrdma_dev *dev = get_ocrdma_dev(ibsrq->device);

 srq = get_ocrdma_srq(ibsrq);

 ocrdma_mbx_destroy_srq(dev, srq);

 if (srq->pd->uctx)
  ocrdma_del_mmap(srq->pd->uctx, (u64) srq->rq.pa,
    PAGE_ALIGN(srq->rq.len));

 kfree(srq->idx_bit_fields);
 kfree(srq->rqe_wr_id_tbl);
}
