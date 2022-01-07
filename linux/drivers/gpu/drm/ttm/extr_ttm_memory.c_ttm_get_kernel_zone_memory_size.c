
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct ttm_mem_global {TYPE_1__* zone_kernel; } ;
struct TYPE_2__ {int max_mem; } ;



uint64_t ttm_get_kernel_zone_memory_size(struct ttm_mem_global *glob)
{
 return glob->zone_kernel->max_mem;
}
