
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smu_table_context {int thermal_controller_type; int driver_pptable; struct smu_11_0_powerplay_table* power_play_table; } ;
struct smu_baco_context {int platform_support; int mutex; } ;
struct smu_context {struct smu_baco_context smu_baco; struct smu_table_context smu_table; } ;
struct smu_11_0_powerplay_table {int platform_caps; int thermal_controller_type; int smc_pptable; } ;
typedef int PPTable_t ;


 int EINVAL ;
 int SMU_11_0_PP_PLATFORM_CAP_BACO ;
 int SMU_11_0_PP_PLATFORM_CAP_MACO ;
 int memcpy (int ,int *,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int navi10_store_powerplay_table(struct smu_context *smu)
{
 struct smu_11_0_powerplay_table *powerplay_table = ((void*)0);
 struct smu_table_context *table_context = &smu->smu_table;
 struct smu_baco_context *smu_baco = &smu->smu_baco;

 if (!table_context->power_play_table)
  return -EINVAL;

 powerplay_table = table_context->power_play_table;

 memcpy(table_context->driver_pptable, &powerplay_table->smc_pptable,
        sizeof(PPTable_t));

 table_context->thermal_controller_type = powerplay_table->thermal_controller_type;

 mutex_lock(&smu_baco->mutex);
 if (powerplay_table->platform_caps & SMU_11_0_PP_PLATFORM_CAP_BACO ||
     powerplay_table->platform_caps & SMU_11_0_PP_PLATFORM_CAP_MACO)
  smu_baco->platform_support = 1;
 mutex_unlock(&smu_baco->mutex);

 return 0;
}
