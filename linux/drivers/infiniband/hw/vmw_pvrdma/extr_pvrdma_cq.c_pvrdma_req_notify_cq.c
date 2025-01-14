
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct pvrdma_dev {TYPE_3__* pdev; } ;
struct TYPE_5__ {int cqe; } ;
struct pvrdma_cq {int cq_lock; TYPE_2__ ibcq; TYPE_1__* ring_state; int cq_handle; } ;
struct ib_cq {int device; } ;
typedef enum ib_cq_notify_flags { ____Placeholder_ib_cq_notify_flags } ib_cq_notify_flags ;
struct TYPE_6__ {int dev; } ;
struct TYPE_4__ {int rx; } ;


 int IB_CQ_REPORT_MISSED_EVENTS ;
 int IB_CQ_SOLICITED ;
 int IB_CQ_SOLICITED_MASK ;
 int PVRDMA_INVALID_IDX ;
 int PVRDMA_UAR_CQ_ARM ;
 int PVRDMA_UAR_CQ_ARM_SOL ;
 int dev_err (int *,char*) ;
 int pvrdma_idx_ring_has_data (int *,int ,unsigned int*) ;
 int pvrdma_write_uar_cq (struct pvrdma_dev*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct pvrdma_cq* to_vcq (struct ib_cq*) ;
 struct pvrdma_dev* to_vdev (int ) ;
 scalar_t__ unlikely (int) ;

int pvrdma_req_notify_cq(struct ib_cq *ibcq,
    enum ib_cq_notify_flags notify_flags)
{
 struct pvrdma_dev *dev = to_vdev(ibcq->device);
 struct pvrdma_cq *cq = to_vcq(ibcq);
 u32 val = cq->cq_handle;
 unsigned long flags;
 int has_data = 0;

 val |= (notify_flags & IB_CQ_SOLICITED_MASK) == IB_CQ_SOLICITED ?
  PVRDMA_UAR_CQ_ARM_SOL : PVRDMA_UAR_CQ_ARM;

 spin_lock_irqsave(&cq->cq_lock, flags);

 pvrdma_write_uar_cq(dev, val);

 if (notify_flags & IB_CQ_REPORT_MISSED_EVENTS) {
  unsigned int head;

  has_data = pvrdma_idx_ring_has_data(&cq->ring_state->rx,
          cq->ibcq.cqe, &head);
  if (unlikely(has_data == PVRDMA_INVALID_IDX))
   dev_err(&dev->pdev->dev, "CQ ring state invalid\n");
 }

 spin_unlock_irqrestore(&cq->cq_lock, flags);

 return has_data;
}
