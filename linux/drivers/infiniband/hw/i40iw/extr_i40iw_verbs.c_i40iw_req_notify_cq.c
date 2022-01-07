
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ib_cq {int dummy; } ;
struct TYPE_4__ {int (* iw_cq_request_notification ) (struct i40iw_cq_uk*,int) ;} ;
struct i40iw_cq_uk {TYPE_2__ ops; } ;
struct TYPE_3__ {struct i40iw_cq_uk cq_uk; } ;
struct i40iw_cq {int lock; TYPE_1__ sc_cq; } ;
typedef enum ib_cq_notify_flags { ____Placeholder_ib_cq_notify_flags } ib_cq_notify_flags ;
typedef enum i40iw_completion_notify { ____Placeholder_i40iw_completion_notify } i40iw_completion_notify ;


 int IB_CQ_SOLICITED ;
 int IW_CQ_COMPL_EVENT ;
 int IW_CQ_COMPL_SOLICITED ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct i40iw_cq_uk*,int) ;

__attribute__((used)) static int i40iw_req_notify_cq(struct ib_cq *ibcq,
          enum ib_cq_notify_flags notify_flags)
{
 struct i40iw_cq *iwcq;
 struct i40iw_cq_uk *ukcq;
 unsigned long flags;
 enum i40iw_completion_notify cq_notify = IW_CQ_COMPL_EVENT;

 iwcq = (struct i40iw_cq *)ibcq;
 ukcq = &iwcq->sc_cq.cq_uk;
 if (notify_flags == IB_CQ_SOLICITED)
  cq_notify = IW_CQ_COMPL_SOLICITED;
 spin_lock_irqsave(&iwcq->lock, flags);
 ukcq->ops.iw_cq_request_notification(ukcq, cq_notify);
 spin_unlock_irqrestore(&iwcq->lock, flags);
 return 0;
}
