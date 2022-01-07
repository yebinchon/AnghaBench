
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct smu_table_context {TYPE_1__* driver_pptable; } ;
struct smu_context {int sensor_lock; struct smu_table_context smu_table; } ;
typedef enum amd_pp_sensors { ____Placeholder_amd_pp_sensors } amd_pp_sensors ;
struct TYPE_2__ {int FanMaximumRpm; } ;
typedef TYPE_1__ PPTable_t ;
 int EINVAL ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int navi10_get_current_activity_percent (struct smu_context*,int,int*) ;
 int navi10_get_gpu_power (struct smu_context*,int*) ;
 int navi10_thermal_get_temperature (struct smu_context*,int,int*) ;
 int smu_smc_read_sensor (struct smu_context*,int,void*,int*) ;

__attribute__((used)) static int navi10_read_sensor(struct smu_context *smu,
     enum amd_pp_sensors sensor,
     void *data, uint32_t *size)
{
 int ret = 0;
 struct smu_table_context *table_context = &smu->smu_table;
 PPTable_t *pptable = table_context->driver_pptable;

 if(!data || !size)
  return -EINVAL;

 mutex_lock(&smu->sensor_lock);
 switch (sensor) {
 case 130:
  *(uint32_t *)data = pptable->FanMaximumRpm;
  *size = 4;
  break;
 case 129:
 case 133:
  ret = navi10_get_current_activity_percent(smu, sensor, (uint32_t *)data);
  *size = 4;
  break;
 case 132:
  ret = navi10_get_gpu_power(smu, (uint32_t *)data);
  *size = 4;
  break;
 case 131:
 case 134:
 case 128:
  ret = navi10_thermal_get_temperature(smu, sensor, (uint32_t *)data);
  *size = 4;
  break;
 default:
  ret = smu_smc_read_sensor(smu, sensor, data, size);
 }
 mutex_unlock(&smu->sensor_lock);

 return ret;
}
