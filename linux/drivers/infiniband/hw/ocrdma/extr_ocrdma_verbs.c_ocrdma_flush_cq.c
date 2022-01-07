
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ocrdma_dev {int dummy; } ;
struct ocrdma_cqe {int dummy; } ;
struct TYPE_2__ {int device; } ;
struct ocrdma_cq {int cqe_cnt; int cq_lock; int id; struct ocrdma_cqe* va; TYPE_1__ ibcq; } ;


 struct ocrdma_dev* get_ocrdma_dev (int ) ;
 scalar_t__ is_cqe_valid (struct ocrdma_cq*,struct ocrdma_cqe*) ;
 int ocrdma_ring_cq_db (struct ocrdma_dev*,int ,int,int,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void ocrdma_flush_cq(struct ocrdma_cq *cq)
{
 int cqe_cnt;
 int valid_count = 0;
 unsigned long flags;

 struct ocrdma_dev *dev = get_ocrdma_dev(cq->ibcq.device);
 struct ocrdma_cqe *cqe = ((void*)0);

 cqe = cq->va;
 cqe_cnt = cq->cqe_cnt;




 spin_lock_irqsave(&cq->cq_lock, flags);
 while (cqe_cnt) {
  if (is_cqe_valid(cq, cqe))
   valid_count++;
  cqe++;
  cqe_cnt--;
 }
 ocrdma_ring_cq_db(dev, cq->id, 0, 0, valid_count);
 spin_unlock_irqrestore(&cq->cq_lock, flags);
}
