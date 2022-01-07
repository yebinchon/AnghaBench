
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int cqe; int device; } ;
struct mthca_cq {int cons_index; TYPE_2__ ibcq; TYPE_1__* resize_buf; } ;
struct TYPE_3__ {int cqe; int buf; } ;


 int MTHCA_CQ_ENTRY_SIZE ;
 scalar_t__ cqe_sw (int ) ;
 int get_cqe (struct mthca_cq*,int) ;
 int get_cqe_from_buf (int *,int) ;
 int memcpy (int ,int ,int ) ;
 int mthca_is_memfree (int ) ;
 int to_mdev (int ) ;

void mthca_cq_resize_copy_cqes(struct mthca_cq *cq)
{
 int i;







 if (!mthca_is_memfree(to_mdev(cq->ibcq.device)) &&
     cq->ibcq.cqe < cq->resize_buf->cqe) {
  cq->cons_index &= cq->ibcq.cqe;
  if (cqe_sw(get_cqe(cq, cq->ibcq.cqe)))
   cq->cons_index -= cq->ibcq.cqe + 1;
 }

 for (i = cq->cons_index; cqe_sw(get_cqe(cq, i & cq->ibcq.cqe)); ++i)
  memcpy(get_cqe_from_buf(&cq->resize_buf->buf,
     i & cq->resize_buf->cqe),
         get_cqe(cq, i & cq->ibcq.cqe), MTHCA_CQ_ENTRY_SIZE);
}
