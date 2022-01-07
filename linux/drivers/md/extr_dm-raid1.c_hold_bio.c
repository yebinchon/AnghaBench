
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mirror_set {int lock; int holds; int ti; int suspend; } ;
struct bio {int bi_status; } ;


 int BLK_STS_DM_REQUEUE ;
 int BLK_STS_IOERR ;
 scalar_t__ atomic_read (int *) ;
 int bio_endio (struct bio*) ;
 int bio_list_add (int *,struct bio*) ;
 scalar_t__ dm_noflush_suspending (int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static void hold_bio(struct mirror_set *ms, struct bio *bio)
{




 spin_lock_irq(&ms->lock);

 if (atomic_read(&ms->suspend)) {
  spin_unlock_irq(&ms->lock);




  if (dm_noflush_suspending(ms->ti))
   bio->bi_status = BLK_STS_DM_REQUEUE;
  else
   bio->bi_status = BLK_STS_IOERR;

  bio_endio(bio);
  return;
 }




 bio_list_add(&ms->holds, bio);
 spin_unlock_irq(&ms->lock);
}
