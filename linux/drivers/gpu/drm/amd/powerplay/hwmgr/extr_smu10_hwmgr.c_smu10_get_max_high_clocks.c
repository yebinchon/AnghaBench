
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pp_hwmgr {int dummy; } ;
struct amd_pp_simple_clock_info {int engine_max_clock; } ;



__attribute__((used)) static int smu10_get_max_high_clocks(struct pp_hwmgr *hwmgr, struct amd_pp_simple_clock_info *clocks)
{
 clocks->engine_max_clock = 80000;
 return 0;
}
