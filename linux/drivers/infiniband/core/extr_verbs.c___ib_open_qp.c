
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ib_qp {void (* event_handler ) (struct ib_event*,void*) ;TYPE_1__* device; int open_list; int qp_type; int qp_num; void* qp_context; int usecnt; struct ib_qp* real_qp; } ;
struct TYPE_2__ {int event_handler_lock; } ;


 int ENOMEM ;
 struct ib_qp* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int atomic_inc (int *) ;
 int ib_open_shared_qp_security (struct ib_qp*,TYPE_1__*) ;
 int kfree (struct ib_qp*) ;
 struct ib_qp* kzalloc (int,int ) ;
 int list_add (int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static struct ib_qp *__ib_open_qp(struct ib_qp *real_qp,
      void (*event_handler)(struct ib_event *, void *),
      void *qp_context)
{
 struct ib_qp *qp;
 unsigned long flags;
 int err;

 qp = kzalloc(sizeof *qp, GFP_KERNEL);
 if (!qp)
  return ERR_PTR(-ENOMEM);

 qp->real_qp = real_qp;
 err = ib_open_shared_qp_security(qp, real_qp->device);
 if (err) {
  kfree(qp);
  return ERR_PTR(err);
 }

 qp->real_qp = real_qp;
 atomic_inc(&real_qp->usecnt);
 qp->device = real_qp->device;
 qp->event_handler = event_handler;
 qp->qp_context = qp_context;
 qp->qp_num = real_qp->qp_num;
 qp->qp_type = real_qp->qp_type;

 spin_lock_irqsave(&real_qp->device->event_handler_lock, flags);
 list_add(&qp->open_list, &real_qp->open_list);
 spin_unlock_irqrestore(&real_qp->device->event_handler_lock, flags);

 return qp;
}
