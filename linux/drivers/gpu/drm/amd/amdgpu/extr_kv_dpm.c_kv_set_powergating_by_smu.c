
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;




 int kv_dpm_powergate_uvd (void*,int) ;
 int kv_dpm_powergate_vce (void*,int) ;

__attribute__((used)) static int kv_set_powergating_by_smu(void *handle,
    uint32_t block_type, bool gate)
{
 switch (block_type) {
 case 129:
  kv_dpm_powergate_uvd(handle, gate);
  break;
 case 128:
  kv_dpm_powergate_vce(handle, gate);
  break;
 default:
  break;
 }
 return 0;
}
