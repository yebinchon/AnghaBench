
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct ttm_mem_global {int zone_kernel; } ;


 void ttm_mem_global_free_zone (struct ttm_mem_global*,int ,int ) ;

void ttm_mem_global_free(struct ttm_mem_global *glob,
    uint64_t amount)
{
 return ttm_mem_global_free_zone(glob, glob->zone_kernel, amount);
}
