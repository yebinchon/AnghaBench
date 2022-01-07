
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dm_region_hash {int region_lock; int quiesced_regions; int hash_lock; TYPE_2__* log; } ;
struct dm_region {int list; int pending; int state; } ;
typedef int region_t ;
struct TYPE_4__ {TYPE_1__* type; } ;
struct TYPE_3__ {int (* get_resync_work ) (TYPE_2__*,int *) ;} ;


 int DM_RH_RECOVERING ;
 struct dm_region* __rh_find (struct dm_region_hash*,int ) ;
 scalar_t__ atomic_read (int *) ;
 int list_del_init (int *) ;
 int list_move (int *,int *) ;
 int read_lock (int *) ;
 int read_unlock (int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int stub1 (TYPE_2__*,int *) ;

__attribute__((used)) static int __rh_recovery_prepare(struct dm_region_hash *rh)
{
 int r;
 region_t region;
 struct dm_region *reg;




 r = rh->log->type->get_resync_work(rh->log, &region);
 if (r <= 0)
  return r;





 read_lock(&rh->hash_lock);
 reg = __rh_find(rh, region);
 read_unlock(&rh->hash_lock);

 spin_lock_irq(&rh->region_lock);
 reg->state = DM_RH_RECOVERING;


 if (atomic_read(&reg->pending))
  list_del_init(&reg->list);
 else
  list_move(&reg->list, &rh->quiesced_regions);

 spin_unlock_irq(&rh->region_lock);

 return 1;
}
