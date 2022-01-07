
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef scalar_t__ uint16_t ;
struct smu_table_context {TYPE_2__* driver_pptable; } ;
struct smu_context {struct smu_table_context smu_table; } ;
struct TYPE_4__ {scalar_t__* FreqTableUclk; TYPE_1__* DpmDescriptor; } ;
struct TYPE_3__ {scalar_t__ NumDiscreteLevels; } ;
typedef TYPE_2__ PPTable_t ;


 int EINVAL ;
 size_t PPCLK_UCLK ;

__attribute__((used)) static int navi10_get_uclk_dpm_states(struct smu_context *smu, uint32_t *clocks_in_khz, uint32_t *num_states)
{
 uint32_t num_discrete_levels = 0;
 uint16_t *dpm_levels = ((void*)0);
 uint16_t i = 0;
 struct smu_table_context *table_context = &smu->smu_table;
 PPTable_t *driver_ppt = ((void*)0);

 if (!clocks_in_khz || !num_states || !table_context->driver_pptable)
  return -EINVAL;

 driver_ppt = table_context->driver_pptable;
 num_discrete_levels = driver_ppt->DpmDescriptor[PPCLK_UCLK].NumDiscreteLevels;
 dpm_levels = driver_ppt->FreqTableUclk;

 if (num_discrete_levels == 0 || dpm_levels == ((void*)0))
  return -EINVAL;

 *num_states = num_discrete_levels;
 for (i = 0; i < num_discrete_levels; i++) {

  *clocks_in_khz = (*dpm_levels) * 1000;
  clocks_in_khz++;
  dpm_levels++;
 }

 return 0;
}
