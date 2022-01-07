
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct smu_context {int dummy; } ;
typedef enum amd_pp_sensors { ____Placeholder_amd_pp_sensors } amd_pp_sensors ;






 int EINVAL ;
 int SMU_GFXCLK ;
 int SMU_UCLK ;
 int smu_common_read_sensor (struct smu_context*,int,void*,int*) ;
 int smu_get_current_clk_freq (struct smu_context*,int ,int*) ;
 int smu_v11_0_get_gfx_vdd (struct smu_context*,int*) ;

__attribute__((used)) static int smu_v11_0_read_sensor(struct smu_context *smu,
     enum amd_pp_sensors sensor,
     void *data, uint32_t *size)
{
 int ret = 0;

 if(!data || !size)
  return -EINVAL;

 switch (sensor) {
 case 131:
  ret = smu_get_current_clk_freq(smu, SMU_UCLK, (uint32_t *)data);
  *size = 4;
  break;
 case 130:
  ret = smu_get_current_clk_freq(smu, SMU_GFXCLK, (uint32_t *)data);
  *size = 4;
  break;
 case 128:
  ret = smu_v11_0_get_gfx_vdd(smu, (uint32_t *)data);
  *size = 4;
  break;
 case 129:
  *(uint32_t *)data = 0;
  *size = 4;
  break;
 default:
  ret = smu_common_read_sensor(smu, sensor, data, size);
  break;
 }

 if (ret)
  *size = 0;

 return ret;
}
