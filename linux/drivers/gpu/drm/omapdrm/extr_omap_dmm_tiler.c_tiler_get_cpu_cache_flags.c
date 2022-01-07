
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {TYPE_1__* plat_data; } ;
struct TYPE_3__ {int cpu_cache_flags; } ;


 TYPE_2__* omap_dmm ;

u32 tiler_get_cpu_cache_flags(void)
{
 return omap_dmm->plat_data->cpu_cache_flags;
}
