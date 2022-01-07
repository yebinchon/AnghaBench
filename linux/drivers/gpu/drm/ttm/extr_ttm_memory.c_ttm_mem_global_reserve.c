
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
struct ttm_mem_zone {scalar_t__ emer_mem; scalar_t__ max_mem; scalar_t__ used_mem; } ;
struct ttm_mem_global {unsigned int num_zones; int lock; struct ttm_mem_zone** zones; } ;


 int CAP_SYS_ADMIN ;
 int ENOMEM ;
 scalar_t__ capable (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int ttm_check_swapping (struct ttm_mem_global*) ;

__attribute__((used)) static int ttm_mem_global_reserve(struct ttm_mem_global *glob,
      struct ttm_mem_zone *single_zone,
      uint64_t amount, bool reserve)
{
 uint64_t limit;
 int ret = -ENOMEM;
 unsigned int i;
 struct ttm_mem_zone *zone;

 spin_lock(&glob->lock);
 for (i = 0; i < glob->num_zones; ++i) {
  zone = glob->zones[i];
  if (single_zone && zone != single_zone)
   continue;

  limit = (capable(CAP_SYS_ADMIN)) ?
   zone->emer_mem : zone->max_mem;

  if (zone->used_mem > limit)
   goto out_unlock;
 }

 if (reserve) {
  for (i = 0; i < glob->num_zones; ++i) {
   zone = glob->zones[i];
   if (single_zone && zone != single_zone)
    continue;
   zone->used_mem += amount;
  }
 }

 ret = 0;
out_unlock:
 spin_unlock(&glob->lock);
 ttm_check_swapping(glob);

 return ret;
}
