
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int x86_cache_size; } ;


 TYPE_1__ boot_cpu_data ;

__attribute__((used)) static int rvt_wss_llc_size(void)
{

 return boot_cpu_data.x86_cache_size;
}
