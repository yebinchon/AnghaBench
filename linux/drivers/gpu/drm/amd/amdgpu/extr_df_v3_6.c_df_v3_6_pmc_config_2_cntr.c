
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct amdgpu_device {int* df_perfmon_config_assign_mask; } ;


 int DF_V3_6_MAX_COUNTERS ;
 int EINVAL ;

__attribute__((used)) static int df_v3_6_pmc_config_2_cntr(struct amdgpu_device *adev,
          uint64_t config)
{
 int i;

 for (i = 0; i < DF_V3_6_MAX_COUNTERS; i++) {
  if ((config & 0x0FFFFFFUL) ==
     adev->df_perfmon_config_assign_mask[i])
   return i;
 }

 return -EINVAL;
}
