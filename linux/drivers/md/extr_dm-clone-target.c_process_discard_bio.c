
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clone {unsigned long nr_regions; int lock; int deferred_discard_bios; int cmd; } ;
struct bio {int dummy; } ;


 int BUG_ON (int) ;
 scalar_t__ CM_READ_ONLY ;
 int bio_endio (struct bio*) ;
 int bio_list_add (int *,struct bio*) ;
 int bio_region_range (struct clone*,struct bio*,unsigned long*,unsigned long*) ;
 int complete_discard_bio (struct clone*,struct bio*,int) ;
 scalar_t__ dm_clone_is_range_hydrated (int ,unsigned long,unsigned long) ;
 scalar_t__ get_clone_mode (struct clone*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ unlikely (int) ;
 int wake_worker (struct clone*) ;

__attribute__((used)) static void process_discard_bio(struct clone *clone, struct bio *bio)
{
 unsigned long rs, re, flags;

 bio_region_range(clone, bio, &rs, &re);
 BUG_ON(re > clone->nr_regions);

 if (unlikely(rs == re)) {
  bio_endio(bio);
  return;
 }





 if (dm_clone_is_range_hydrated(clone->cmd, rs, re - rs)) {
  complete_discard_bio(clone, bio, 1);
  return;
 }






 if (unlikely(get_clone_mode(clone) >= CM_READ_ONLY)) {
  bio_endio(bio);
  return;
 }




 spin_lock_irqsave(&clone->lock, flags);
 bio_list_add(&clone->deferred_discard_bios, bio);
 spin_unlock_irqrestore(&clone->lock, flags);

 wake_worker(clone);
}
