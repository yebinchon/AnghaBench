
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_3__ {int entry; } ;
struct vc4_seqno_cb {void (* func ) (struct vc4_seqno_cb*) ;TYPE_1__ work; scalar_t__ seqno; } ;
struct vc4_dev {scalar_t__ finished_seqno; int job_lock; int seqno_cb_list; } ;
struct drm_device {int dummy; } ;


 int INIT_WORK (TYPE_1__*,int ) ;
 int list_add_tail (int *,int *) ;
 int schedule_work (TYPE_1__*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct vc4_dev* to_vc4_dev (struct drm_device*) ;
 int vc4_seqno_cb_work ;

int vc4_queue_seqno_cb(struct drm_device *dev,
         struct vc4_seqno_cb *cb, uint64_t seqno,
         void (*func)(struct vc4_seqno_cb *cb))
{
 struct vc4_dev *vc4 = to_vc4_dev(dev);
 int ret = 0;
 unsigned long irqflags;

 cb->func = func;
 INIT_WORK(&cb->work, vc4_seqno_cb_work);

 spin_lock_irqsave(&vc4->job_lock, irqflags);
 if (seqno > vc4->finished_seqno) {
  cb->seqno = seqno;
  list_add_tail(&cb->work.entry, &vc4->seqno_cb_list);
 } else {
  schedule_work(&cb->work);
 }
 spin_unlock_irqrestore(&vc4->job_lock, irqflags);

 return ret;
}
