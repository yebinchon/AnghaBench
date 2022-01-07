
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
struct ttm_mem_zone {int used_mem; } ;
struct ttm_mem_global {unsigned int num_zones; int lock; struct ttm_mem_zone** zones; } ;


 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void ttm_mem_global_free_zone(struct ttm_mem_global *glob,
         struct ttm_mem_zone *single_zone,
         uint64_t amount)
{
 unsigned int i;
 struct ttm_mem_zone *zone;

 spin_lock(&glob->lock);
 for (i = 0; i < glob->num_zones; ++i) {
  zone = glob->zones[i];
  if (single_zone && zone != single_zone)
   continue;
  zone->used_mem -= amount;
 }
 spin_unlock(&glob->lock);
}
