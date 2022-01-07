
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct smu_context {int dummy; } ;






 int smu_dpm_set_uvd_enable (struct smu_context*,int) ;
 int smu_dpm_set_vce_enable (struct smu_context*,int) ;
 int smu_gfx_off_control (struct smu_context*,int) ;
 int smu_powergate_sdma (struct smu_context*,int) ;

int smu_dpm_set_power_gate(struct smu_context *smu, uint32_t block_type,
      bool gate)
{
 int ret = 0;

 switch (block_type) {
 case 129:
  ret = smu_dpm_set_uvd_enable(smu, gate);
  break;
 case 128:
  ret = smu_dpm_set_vce_enable(smu, gate);
  break;
 case 131:
  ret = smu_gfx_off_control(smu, gate);
  break;
 case 130:
  ret = smu_powergate_sdma(smu, gate);
  break;
 default:
  break;
 }

 return ret;
}
