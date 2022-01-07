
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5_ib_drain_cqe {int done; } ;
struct mlx5_ib_dev {int reset_flow_resource_lock; struct mlx5_core_dev* mdev; } ;
struct TYPE_2__ {int reset_notify_added; int (* comp ) (TYPE_1__*,int *) ;} ;
struct mlx5_ib_cq {TYPE_1__ mcq; } ;
struct mlx5_core_dev {scalar_t__ state; } ;
struct ib_cq {int poll_ctx; int work; int iop; } ;


 int HZ ;
 int IB_POLL_DIRECT ;


 scalar_t__ MLX5_DEVICE_STATE_INTERNAL_ERROR ;
 int WARN_ON_ONCE (int) ;
 int cancel_work_sync (int *) ;
 int ib_process_cq_direct (struct ib_cq*,int) ;
 int irq_poll_disable (int *) ;
 int irq_poll_enable (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (TYPE_1__*,int *) ;
 struct mlx5_ib_cq* to_mcq (struct ib_cq*) ;
 int wait_for_completion (int *) ;
 scalar_t__ wait_for_completion_timeout (int *,int) ;

__attribute__((used)) static void handle_drain_completion(struct ib_cq *cq,
        struct mlx5_ib_drain_cqe *sdrain,
        struct mlx5_ib_dev *dev)
{
 struct mlx5_core_dev *mdev = dev->mdev;

 if (cq->poll_ctx == IB_POLL_DIRECT) {
  while (wait_for_completion_timeout(&sdrain->done, HZ / 10) <= 0)
   ib_process_cq_direct(cq, -1);
  return;
 }

 if (mdev->state == MLX5_DEVICE_STATE_INTERNAL_ERROR) {
  struct mlx5_ib_cq *mcq = to_mcq(cq);
  bool triggered = 0;
  unsigned long flags;

  spin_lock_irqsave(&dev->reset_flow_resource_lock, flags);

  if (!mcq->mcq.reset_notify_added)
   mcq->mcq.reset_notify_added = 1;
  else
   triggered = 1;
  spin_unlock_irqrestore(&dev->reset_flow_resource_lock, flags);

  if (triggered) {

   switch (cq->poll_ctx) {
   case 129:
    irq_poll_disable(&cq->iop);
    irq_poll_enable(&cq->iop);
    break;
   case 128:
    cancel_work_sync(&cq->work);
    break;
   default:
    WARN_ON_ONCE(1);
   }
  }




  mcq->mcq.comp(&mcq->mcq, ((void*)0));
 }

 wait_for_completion(&sdrain->done);
}
