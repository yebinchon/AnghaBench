
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct smu_context {int mutex; int adev; int pm_enabled; } ;
struct amd_pp_display_configuration {int min_dcef_deep_sleep_set_clk; int num_path_including_non_display; int nb_pstate_switch_disable; int cpu_pstate_disable; int cpu_cc6_disable; int cpu_pstate_separation_time; TYPE_1__* displays; } ;
struct TYPE_2__ {scalar_t__ controller_id; } ;


 int EINVAL ;
 int is_support_sw_smu (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int smu_set_active_display_count (struct smu_context*,int) ;
 int smu_set_deep_sleep_dcefclk (struct smu_context*,int) ;
 int smu_store_cc6_data (struct smu_context*,int ,int ,int ,int ) ;

int smu_display_configuration_change(struct smu_context *smu,
         const struct amd_pp_display_configuration *display_config)
{
 int index = 0;
 int num_of_active_display = 0;

 if (!smu->pm_enabled || !is_support_sw_smu(smu->adev))
  return -EINVAL;

 if (!display_config)
  return -EINVAL;

 mutex_lock(&smu->mutex);

 smu_set_deep_sleep_dcefclk(smu,
       display_config->min_dcef_deep_sleep_set_clk / 100);

 for (index = 0; index < display_config->num_path_including_non_display; index++) {
  if (display_config->displays[index].controller_id != 0)
   num_of_active_display++;
 }

 smu_set_active_display_count(smu, num_of_active_display);

 smu_store_cc6_data(smu, display_config->cpu_pstate_separation_time,
      display_config->cpu_cc6_disable,
      display_config->cpu_pstate_disable,
      display_config->nb_pstate_switch_disable);

 mutex_unlock(&smu->mutex);

 return 0;
}
