
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct pp_hwmgr {int dummy; } ;
struct phm_phase_shedding_limits_table {unsigned int count; TYPE_1__* entries; } ;
struct TYPE_2__ {scalar_t__ Mclk; } ;



__attribute__((used)) static int iceland_populate_phase_value_based_on_mclk(struct pp_hwmgr *hwmgr, const struct phm_phase_shedding_limits_table *pl,
     uint32_t memory_clock, uint32_t *p_shed)
{
 unsigned int i;

 *p_shed = 1;

 for (i = 0; i < pl->count; i++) {
  if (memory_clock < pl->entries[i].Mclk) {
   *p_shed = i;
   break;
  }
 }

 return 0;
}
