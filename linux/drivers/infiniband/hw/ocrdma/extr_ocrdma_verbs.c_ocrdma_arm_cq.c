
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ocrdma_dev {int dummy; } ;
struct ocrdma_cq {int cq_lock; int id; } ;
struct ib_cq {int device; } ;
typedef enum ib_cq_notify_flags { ____Placeholder_ib_cq_notify_flags } ib_cq_notify_flags ;


 int IB_CQ_NEXT_COMP ;
 int IB_CQ_SOLICITED ;
 struct ocrdma_cq* get_ocrdma_cq (struct ib_cq*) ;
 struct ocrdma_dev* get_ocrdma_dev (int ) ;
 int ocrdma_ring_cq_db (struct ocrdma_dev*,int ,int,int,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int ocrdma_arm_cq(struct ib_cq *ibcq, enum ib_cq_notify_flags cq_flags)
{
 struct ocrdma_cq *cq = get_ocrdma_cq(ibcq);
 struct ocrdma_dev *dev = get_ocrdma_dev(ibcq->device);
 u16 cq_id;
 unsigned long flags;
 bool arm_needed = 0, sol_needed = 0;

 cq_id = cq->id;

 spin_lock_irqsave(&cq->cq_lock, flags);
 if (cq_flags & IB_CQ_NEXT_COMP || cq_flags & IB_CQ_SOLICITED)
  arm_needed = 1;
 if (cq_flags & IB_CQ_SOLICITED)
  sol_needed = 1;

 ocrdma_ring_cq_db(dev, cq_id, arm_needed, sol_needed, 0);
 spin_unlock_irqrestore(&cq->cq_lock, flags);

 return 0;
}
