
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bio_list {int head; } ;
struct mirror_set {int log_failure; int leg_failure; int lock; struct bio_list failures; int rh; struct bio_list writes; } ;
struct dm_dirty_log {TYPE_1__* type; } ;
struct bio {int bi_opf; } ;
typedef int region_t ;
struct TYPE_2__ {scalar_t__ (* is_remote_recovering ) (struct dm_dirty_log*,int ) ;} ;






 scalar_t__ REQ_OP_DISCARD ;
 int REQ_PREFLUSH ;
 int bio_list_add (struct bio_list*,struct bio*) ;
 int bio_list_init (struct bio_list*) ;
 int bio_list_merge (struct bio_list*,struct bio_list*) ;
 struct bio* bio_list_pop (struct bio_list*) ;
 scalar_t__ bio_op (struct bio*) ;
 int delayed_wake (struct mirror_set*) ;
 int dm_rh_bio_to_region (int ,struct bio*) ;
 int dm_rh_delay (int ,struct bio*) ;
 struct dm_dirty_log* dm_rh_dirty_log (int ) ;
 scalar_t__ dm_rh_flush (int ) ;
 int dm_rh_get_state (int ,int ,int) ;
 int dm_rh_inc_pending (int ,struct bio_list*) ;
 int do_write (struct mirror_set*,struct bio*) ;
 scalar_t__ errors_handled (struct mirror_set*) ;
 int generic_make_request (struct bio*) ;
 int get_default_mirror (struct mirror_set*) ;
 int keep_log (struct mirror_set*) ;
 int map_bio (int ,struct bio*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 scalar_t__ stub1 (struct dm_dirty_log*,int ) ;
 scalar_t__ unlikely (int) ;
 int wakeup_mirrord (struct mirror_set*) ;

__attribute__((used)) static void do_writes(struct mirror_set *ms, struct bio_list *writes)
{
 int state;
 struct bio *bio;
 struct bio_list sync, nosync, recover, *this_list = ((void*)0);
 struct bio_list requeue;
 struct dm_dirty_log *log = dm_rh_dirty_log(ms->rh);
 region_t region;

 if (!writes->head)
  return;




 bio_list_init(&sync);
 bio_list_init(&nosync);
 bio_list_init(&recover);
 bio_list_init(&requeue);

 while ((bio = bio_list_pop(writes))) {
  if ((bio->bi_opf & REQ_PREFLUSH) ||
      (bio_op(bio) == REQ_OP_DISCARD)) {
   bio_list_add(&sync, bio);
   continue;
  }

  region = dm_rh_bio_to_region(ms->rh, bio);

  if (log->type->is_remote_recovering &&
      log->type->is_remote_recovering(log, region)) {
   bio_list_add(&requeue, bio);
   continue;
  }

  state = dm_rh_get_state(ms->rh, region, 1);
  switch (state) {
  case 131:
  case 130:
   this_list = &sync;
   break;

  case 129:
   this_list = &nosync;
   break;

  case 128:
   this_list = &recover;
   break;
  }

  bio_list_add(this_list, bio);
 }





 if (unlikely(requeue.head)) {
  spin_lock_irq(&ms->lock);
  bio_list_merge(&ms->writes, &requeue);
  spin_unlock_irq(&ms->lock);
  delayed_wake(ms);
 }






 dm_rh_inc_pending(ms->rh, &sync);
 dm_rh_inc_pending(ms->rh, &nosync);






 ms->log_failure = dm_rh_flush(ms->rh) ? 1 : ms->log_failure;




 if (unlikely(ms->log_failure) && errors_handled(ms)) {
  spin_lock_irq(&ms->lock);
  bio_list_merge(&ms->failures, &sync);
  spin_unlock_irq(&ms->lock);
  wakeup_mirrord(ms);
 } else
  while ((bio = bio_list_pop(&sync)))
   do_write(ms, bio);

 while ((bio = bio_list_pop(&recover)))
  dm_rh_delay(ms->rh, bio);

 while ((bio = bio_list_pop(&nosync))) {
  if (unlikely(ms->leg_failure) && errors_handled(ms) && !keep_log(ms)) {
   spin_lock_irq(&ms->lock);
   bio_list_add(&ms->failures, bio);
   spin_unlock_irq(&ms->lock);
   wakeup_mirrord(ms);
  } else {
   map_bio(get_default_mirror(ms), bio);
   generic_make_request(bio);
  }
 }
}
