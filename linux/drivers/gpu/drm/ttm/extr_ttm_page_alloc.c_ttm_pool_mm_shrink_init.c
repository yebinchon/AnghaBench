
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int seeks; int scan_objects; int count_objects; } ;
struct ttm_pool_manager {TYPE_1__ mm_shrink; } ;


 int register_shrinker (TYPE_1__*) ;
 int ttm_pool_shrink_count ;
 int ttm_pool_shrink_scan ;

__attribute__((used)) static int ttm_pool_mm_shrink_init(struct ttm_pool_manager *manager)
{
 manager->mm_shrink.count_objects = ttm_pool_shrink_count;
 manager->mm_shrink.scan_objects = ttm_pool_shrink_scan;
 manager->mm_shrink.seeks = 1;
 return register_shrinker(&manager->mm_shrink);
}
