
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
 int pp_dpm_powergate_acp (void*,int) ;
 int pp_dpm_powergate_gfx (void*,int) ;
 int pp_dpm_powergate_mmhub (void*) ;
 int pp_dpm_powergate_sdma (void*,int) ;
 int pp_dpm_powergate_uvd (void*,int) ;
 int pp_dpm_powergate_vce (void*,int) ;

__attribute__((used)) static int pp_set_powergating_by_smu(void *handle,
    uint32_t block_type, bool gate)
{
 int ret = 0;

 switch (block_type) {
 case 130:
 case 128:
  pp_dpm_powergate_uvd(handle, gate);
  break;
 case 129:
  pp_dpm_powergate_vce(handle, gate);
  break;
 case 132:
  pp_dpm_powergate_mmhub(handle);
  break;
 case 133:
  ret = pp_dpm_powergate_gfx(handle, gate);
  break;
 case 134:
  pp_dpm_powergate_acp(handle, gate);
  break;
 case 131:
  pp_dpm_powergate_sdma(handle, gate);
  break;
 default:
  break;
 }
 return ret;
}
