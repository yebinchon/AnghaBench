
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef scalar_t__ uint32_t ;
struct amdgpu_device {int dummy; } ;


 int df_v3_6_perfmon_wreg (struct amdgpu_device*,scalar_t__,int ,scalar_t__,int ) ;
 int df_v3_6_pmc_get_read_settings (struct amdgpu_device*,int ,scalar_t__*,scalar_t__*) ;

__attribute__((used)) static void df_v3_6_reset_perfmon_cntr(struct amdgpu_device *adev,
      uint64_t config)
{
 uint32_t lo_base_addr, hi_base_addr;

 df_v3_6_pmc_get_read_settings(adev, config, &lo_base_addr,
          &hi_base_addr);

 if ((lo_base_addr == 0) || (hi_base_addr == 0))
  return;

 df_v3_6_perfmon_wreg(adev, lo_base_addr, 0, hi_base_addr, 0);
}
