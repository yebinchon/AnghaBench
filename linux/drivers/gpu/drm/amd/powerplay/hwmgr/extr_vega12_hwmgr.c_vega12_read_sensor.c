
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
struct vega12_hwmgr {int vce_power_gated; int uvd_power_gated; } ;
struct pp_hwmgr {scalar_t__ backend; } ;
struct TYPE_3__ {int TemperatureHotspot; int TemperatureHBM; } ;
typedef TYPE_1__ SmuMetrics_t ;
 int EINVAL ;
 int PP_TEMPERATURE_UNITS_PER_CENTIGRADES ;
 int vega12_get_current_activity_percent (struct pp_hwmgr*,int,int*) ;
 int vega12_get_current_gfx_clk_freq (struct pp_hwmgr*,int*) ;
 int vega12_get_current_mclk_freq (struct pp_hwmgr*,int*) ;
 int vega12_get_enabled_smc_features (struct pp_hwmgr*,int *) ;
 int vega12_get_gpu_power (struct pp_hwmgr*,int*) ;
 int vega12_get_metrics_table (struct pp_hwmgr*,TYPE_1__*) ;
 int vega12_thermal_get_temperature (struct pp_hwmgr*) ;

__attribute__((used)) static int vega12_read_sensor(struct pp_hwmgr *hwmgr, int idx,
         void *value, int *size)
{
 struct vega12_hwmgr *data = (struct vega12_hwmgr *)(hwmgr->backend);
 SmuMetrics_t metrics_table;
 int ret = 0;

 switch (idx) {
 case 136:
  ret = vega12_get_current_gfx_clk_freq(hwmgr, (uint32_t *)value);
  if (!ret)
   *size = 4;
  break;
 case 137:
  ret = vega12_get_current_mclk_freq(hwmgr, (uint32_t *)value);
  if (!ret)
   *size = 4;
  break;
 case 135:
 case 131:
  ret = vega12_get_current_activity_percent(hwmgr, idx, (uint32_t *)value);
  if (!ret)
   *size = 4;
  break;
 case 133:
  *((uint32_t *)value) = vega12_thermal_get_temperature(hwmgr);
  *size = 4;
  break;
 case 132:
  ret = vega12_get_metrics_table(hwmgr, &metrics_table);
  if (ret)
   return ret;

  *((uint32_t *)value) = metrics_table.TemperatureHotspot *
   PP_TEMPERATURE_UNITS_PER_CENTIGRADES;
  *size = 4;
  break;
 case 130:
  ret = vega12_get_metrics_table(hwmgr, &metrics_table);
  if (ret)
   return ret;

  *((uint32_t *)value) = metrics_table.TemperatureHBM *
   PP_TEMPERATURE_UNITS_PER_CENTIGRADES;
  *size = 4;
  break;
 case 129:
  *((uint32_t *)value) = data->uvd_power_gated ? 0 : 1;
  *size = 4;
  break;
 case 128:
  *((uint32_t *)value) = data->vce_power_gated ? 0 : 1;
  *size = 4;
  break;
 case 134:
  ret = vega12_get_gpu_power(hwmgr, (uint32_t *)value);
  if (!ret)
   *size = 4;
  break;
 case 138:
  ret = vega12_get_enabled_smc_features(hwmgr, (uint64_t *)value);
  if (!ret)
   *size = 8;
  break;
 default:
  ret = -EINVAL;
  break;
 }
 return ret;
}
