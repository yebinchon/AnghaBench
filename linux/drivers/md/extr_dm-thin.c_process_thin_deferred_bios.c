
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bio_list {int dummy; } ;
struct thin_c {int lock; struct bio_list deferred_bio_list; scalar_t__ requeue_mode; struct pool* pool; } ;
struct pool {int pmd; int throttle; int (* process_bio ) (struct thin_c*,struct bio*) ;int (* process_discard ) (struct thin_c*,struct bio*) ;} ;
struct blk_plug {int dummy; } ;
struct bio {int dummy; } ;


 int BLK_STS_DM_REQUEUE ;
 scalar_t__ REQ_OP_DISCARD ;
 int __sort_thin_deferred_bios (struct thin_c*) ;
 int bio_list_add (struct bio_list*,struct bio*) ;
 scalar_t__ bio_list_empty (struct bio_list*) ;
 int bio_list_init (struct bio_list*) ;
 int bio_list_merge (struct bio_list*,struct bio_list*) ;
 struct bio* bio_list_pop (struct bio_list*) ;
 scalar_t__ bio_op (struct bio*) ;
 int blk_finish_plug (struct blk_plug*) ;
 int blk_start_plug (struct blk_plug*) ;
 int dm_pool_issue_prefetches (int ) ;
 scalar_t__ ensure_next_mapping (struct pool*) ;
 int error_thin_bio_list (struct thin_c*,struct bio_list*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct thin_c*,struct bio*) ;
 int stub2 (struct thin_c*,struct bio*) ;
 int throttle_work_update (int *) ;

__attribute__((used)) static void process_thin_deferred_bios(struct thin_c *tc)
{
 struct pool *pool = tc->pool;
 unsigned long flags;
 struct bio *bio;
 struct bio_list bios;
 struct blk_plug plug;
 unsigned count = 0;

 if (tc->requeue_mode) {
  error_thin_bio_list(tc, &tc->deferred_bio_list,
    BLK_STS_DM_REQUEUE);
  return;
 }

 bio_list_init(&bios);

 spin_lock_irqsave(&tc->lock, flags);

 if (bio_list_empty(&tc->deferred_bio_list)) {
  spin_unlock_irqrestore(&tc->lock, flags);
  return;
 }

 __sort_thin_deferred_bios(tc);

 bio_list_merge(&bios, &tc->deferred_bio_list);
 bio_list_init(&tc->deferred_bio_list);

 spin_unlock_irqrestore(&tc->lock, flags);

 blk_start_plug(&plug);
 while ((bio = bio_list_pop(&bios))) {





  if (ensure_next_mapping(pool)) {
   spin_lock_irqsave(&tc->lock, flags);
   bio_list_add(&tc->deferred_bio_list, bio);
   bio_list_merge(&tc->deferred_bio_list, &bios);
   spin_unlock_irqrestore(&tc->lock, flags);
   break;
  }

  if (bio_op(bio) == REQ_OP_DISCARD)
   pool->process_discard(tc, bio);
  else
   pool->process_bio(tc, bio);

  if ((count++ & 127) == 0) {
   throttle_work_update(&pool->throttle);
   dm_pool_issue_prefetches(pool->pmd);
  }
 }
 blk_finish_plug(&plug);
}
