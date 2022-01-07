
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smu_table_context {int thermal_controller_type; int driver_pptable; struct smu_11_0_powerplay_table* power_play_table; } ;
struct smu_context {struct smu_table_context smu_table; } ;
struct smu_11_0_powerplay_table {int thermal_controller_type; int smc_pptable; } ;
typedef int PPTable_t ;


 int EINVAL ;
 int memcpy (int ,int *,int) ;

__attribute__((used)) static int arcturus_store_powerplay_table(struct smu_context *smu)
{
 struct smu_11_0_powerplay_table *powerplay_table = ((void*)0);
 struct smu_table_context *table_context = &smu->smu_table;
 int ret = 0;

 if (!table_context->power_play_table)
  return -EINVAL;

 powerplay_table = table_context->power_play_table;

 memcpy(table_context->driver_pptable, &powerplay_table->smc_pptable,
        sizeof(PPTable_t));

 table_context->thermal_controller_type = powerplay_table->thermal_controller_type;

 return ret;
}
