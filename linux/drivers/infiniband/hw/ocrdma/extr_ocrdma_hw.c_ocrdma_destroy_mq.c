
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ocrdma_queue_info {scalar_t__ created; } ;
struct TYPE_4__ {struct ocrdma_queue_info cq; struct ocrdma_queue_info sq; } ;
struct TYPE_3__ {int lock; } ;
struct ocrdma_dev {TYPE_2__ mq; TYPE_1__ mqe_ctx; } ;


 int QTYPE_CQ ;
 int QTYPE_MCCQ ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int ocrdma_free_q (struct ocrdma_dev*,struct ocrdma_queue_info*) ;
 int ocrdma_mbx_delete_q (struct ocrdma_dev*,struct ocrdma_queue_info*,int ) ;

__attribute__((used)) static void ocrdma_destroy_mq(struct ocrdma_dev *dev)
{
 struct ocrdma_queue_info *mbxq, *cq;


 mutex_lock(&dev->mqe_ctx.lock);
 mbxq = &dev->mq.sq;
 if (mbxq->created) {
  ocrdma_mbx_delete_q(dev, mbxq, QTYPE_MCCQ);
  ocrdma_free_q(dev, mbxq);
 }
 mutex_unlock(&dev->mqe_ctx.lock);

 cq = &dev->mq.cq;
 if (cq->created) {
  ocrdma_mbx_delete_q(dev, cq, QTYPE_CQ);
  ocrdma_free_q(dev, cq);
 }
}
