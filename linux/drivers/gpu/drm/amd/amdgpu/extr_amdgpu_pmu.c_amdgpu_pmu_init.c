
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int asic_type; } ;



 int DF_V3_6_MAX_COUNTERS ;
 int PERF_TYPE_AMDGPU_DF ;
 int df_v3_6_attr_groups ;
 int init_pmu_by_type (struct amdgpu_device*,int ,char*,char*,int ,int ) ;

int amdgpu_pmu_init(struct amdgpu_device *adev)
{
 int ret = 0;

 switch (adev->asic_type) {
 case 128:

  ret = init_pmu_by_type(adev, df_v3_6_attr_groups,
           "DF", "amdgpu_df", PERF_TYPE_AMDGPU_DF,
           DF_V3_6_MAX_COUNTERS);


  break;
 default:
  return 0;
 }

 return 0;
}
