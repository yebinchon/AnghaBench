
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mapped_device {int work; int wq; int deferred_lock; int deferred; } ;
struct bio {int dummy; } ;


 int bio_list_add (int *,struct bio*) ;
 int queue_work (int ,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void queue_io(struct mapped_device *md, struct bio *bio)
{
 unsigned long flags;

 spin_lock_irqsave(&md->deferred_lock, flags);
 bio_list_add(&md->deferred, bio);
 spin_unlock_irqrestore(&md->deferred_lock, flags);
 queue_work(md->wq, &md->work);
}
