
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct smu_context {int dummy; } ;
typedef enum amd_pp_sensors { ____Placeholder_amd_pp_sensors } amd_pp_sensors ;
struct TYPE_3__ {int TemperatureHotspot; int TemperatureEdge; int TemperatureMem; } ;
typedef TYPE_1__ SmuMetrics_t ;





 int EINVAL ;
 int SMU_TEMPERATURE_UNITS_PER_CENTIGRADES ;
 int navi10_get_metrics_table (struct smu_context*,TYPE_1__*) ;
 int pr_err (char*) ;

__attribute__((used)) static int navi10_thermal_get_temperature(struct smu_context *smu,
          enum amd_pp_sensors sensor,
          uint32_t *value)
{
 SmuMetrics_t metrics;
 int ret = 0;

 if (!value)
  return -EINVAL;

 ret = navi10_get_metrics_table(smu, &metrics);
 if (ret)
  return ret;

 switch (sensor) {
 case 129:
  *value = metrics.TemperatureHotspot *
   SMU_TEMPERATURE_UNITS_PER_CENTIGRADES;
  break;
 case 130:
  *value = metrics.TemperatureEdge *
   SMU_TEMPERATURE_UNITS_PER_CENTIGRADES;
  break;
 case 128:
  *value = metrics.TemperatureMem *
   SMU_TEMPERATURE_UNITS_PER_CENTIGRADES;
  break;
 default:
  pr_err("Invalid sensor for retrieving temp\n");
  return -EINVAL;
 }

 return 0;
}
