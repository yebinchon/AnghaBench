
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bio_list {int head; } ;
struct mirror_set {int lock; struct bio_list reads; struct bio_list writes; } ;
struct bio {int dummy; } ;


 int WRITE ;
 int bio_list_add (struct bio_list*,struct bio*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wakeup_mirrord (struct mirror_set*) ;

__attribute__((used)) static void queue_bio(struct mirror_set *ms, struct bio *bio, int rw)
{
 unsigned long flags;
 int should_wake = 0;
 struct bio_list *bl;

 bl = (rw == WRITE) ? &ms->writes : &ms->reads;
 spin_lock_irqsave(&ms->lock, flags);
 should_wake = !(bl->head);
 bio_list_add(bl, bio);
 spin_unlock_irqrestore(&ms->lock, flags);

 if (should_wake)
  wakeup_mirrord(ms);
}
