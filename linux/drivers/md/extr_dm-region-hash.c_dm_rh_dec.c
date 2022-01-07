
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_region_hash {int context; int (* wakeup_workers ) (int ) ;int region_lock; int clean_regions; int quiesced_regions; int flush_failure; int hash_lock; } ;
struct dm_region {scalar_t__ state; int list; int pending; } ;
typedef int region_t ;


 scalar_t__ DM_RH_CLEAN ;
 scalar_t__ DM_RH_DIRTY ;
 scalar_t__ DM_RH_NOSYNC ;
 scalar_t__ DM_RH_RECOVERING ;
 struct dm_region* __rh_lookup (struct dm_region_hash*,int ) ;
 scalar_t__ atomic_dec_and_test (int *) ;
 int list_add (int *,int *) ;
 int list_add_tail (int *,int *) ;
 int read_lock (int *) ;
 int read_unlock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (int ) ;
 scalar_t__ unlikely (int ) ;

void dm_rh_dec(struct dm_region_hash *rh, region_t region)
{
 unsigned long flags;
 struct dm_region *reg;
 int should_wake = 0;

 read_lock(&rh->hash_lock);
 reg = __rh_lookup(rh, region);
 read_unlock(&rh->hash_lock);

 spin_lock_irqsave(&rh->region_lock, flags);
 if (atomic_dec_and_test(&reg->pending)) {
  if (unlikely(rh->flush_failure)) {





   reg->state = DM_RH_NOSYNC;
  } else if (reg->state == DM_RH_RECOVERING) {
   list_add_tail(&reg->list, &rh->quiesced_regions);
  } else if (reg->state == DM_RH_DIRTY) {
   reg->state = DM_RH_CLEAN;
   list_add(&reg->list, &rh->clean_regions);
  }
  should_wake = 1;
 }
 spin_unlock_irqrestore(&rh->region_lock, flags);

 if (should_wake)
  rh->wakeup_workers(rh->context);
}
