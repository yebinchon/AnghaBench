
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_mbox_queue {int work; int fifo; int lock; } ;
struct omap_mbox {int dummy; } ;


 int GFP_KERNEL ;
 int INIT_WORK (int *,void (*) (struct work_struct*)) ;
 scalar_t__ kfifo_alloc (int *,int ,int ) ;
 int kfree (struct omap_mbox_queue*) ;
 struct omap_mbox_queue* kzalloc (int,int ) ;
 int mbox_kfifo_size ;
 int spin_lock_init (int *) ;

__attribute__((used)) static struct omap_mbox_queue *mbox_queue_alloc(struct omap_mbox *mbox,
     void (*work)(struct work_struct *))
{
 struct omap_mbox_queue *mq;

 if (!work)
  return ((void*)0);

 mq = kzalloc(sizeof(*mq), GFP_KERNEL);
 if (!mq)
  return ((void*)0);

 spin_lock_init(&mq->lock);

 if (kfifo_alloc(&mq->fifo, mbox_kfifo_size, GFP_KERNEL))
  goto error;

 INIT_WORK(&mq->work, work);
 return mq;

error:
 kfree(mq);
 return ((void*)0);
}
