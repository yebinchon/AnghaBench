
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct amdgpu_device {unsigned long long* df_perfmon_config_assign_mask; } ;


 int df_v3_6_pmc_config_2_cntr (struct amdgpu_device*,int ) ;

__attribute__((used)) static void df_v3_6_pmc_release_cntr(struct amdgpu_device *adev,
         uint64_t config)
{
 int target_cntr = df_v3_6_pmc_config_2_cntr(adev, config);

 if (target_cntr >= 0)
  adev->df_perfmon_config_assign_mask[target_cntr] = 0ULL;
}
