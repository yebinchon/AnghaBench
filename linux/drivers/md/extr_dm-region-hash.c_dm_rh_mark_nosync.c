
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dm_region_hash {int flush_failure; int region_lock; int hash_lock; struct dm_dirty_log* log; } ;
struct dm_region {scalar_t__ state; int list; } ;
struct dm_dirty_log {TYPE_1__* type; } ;
struct bio {int bi_opf; } ;
typedef int region_t ;
struct TYPE_2__ {int (* set_region_sync ) (struct dm_dirty_log*,int ,int ) ;} ;


 int BUG_ON (int) ;
 scalar_t__ DM_RH_NOSYNC ;
 scalar_t__ DM_RH_RECOVERING ;
 scalar_t__ REQ_OP_DISCARD ;
 int REQ_PREFLUSH ;
 struct dm_region* __rh_find (struct dm_region_hash*,int ) ;
 scalar_t__ bio_op (struct bio*) ;
 int complete_resync_work (struct dm_region*,int ) ;
 int dm_rh_bio_to_region (struct dm_region_hash*,struct bio*) ;
 int list_empty (int *) ;
 int read_lock (int *) ;
 int read_unlock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct dm_dirty_log*,int ,int ) ;

void dm_rh_mark_nosync(struct dm_region_hash *rh, struct bio *bio)
{
 unsigned long flags;
 struct dm_dirty_log *log = rh->log;
 struct dm_region *reg;
 region_t region = dm_rh_bio_to_region(rh, bio);
 int recovering = 0;

 if (bio->bi_opf & REQ_PREFLUSH) {
  rh->flush_failure = 1;
  return;
 }

 if (bio_op(bio) == REQ_OP_DISCARD)
  return;


 log->type->set_region_sync(log, region, 0);

 read_lock(&rh->hash_lock);
 reg = __rh_find(rh, region);
 read_unlock(&rh->hash_lock);


 BUG_ON(!reg);
 BUG_ON(!list_empty(&reg->list));

 spin_lock_irqsave(&rh->region_lock, flags);







 recovering = (reg->state == DM_RH_RECOVERING);
 reg->state = DM_RH_NOSYNC;
 BUG_ON(!list_empty(&reg->list));
 spin_unlock_irqrestore(&rh->region_lock, flags);

 if (recovering)
  complete_resync_work(reg, 0);
}
