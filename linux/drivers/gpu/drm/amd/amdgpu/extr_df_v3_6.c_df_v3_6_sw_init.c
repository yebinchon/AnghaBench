
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {scalar_t__* df_perfmon_config_assign_mask; int dev; } ;


 int AMDGPU_MAX_DF_PERFMONS ;
 int DRM_ERROR (char*) ;
 int dev_attr_df_cntr_avail ;
 int device_create_file (int ,int *) ;

__attribute__((used)) static void df_v3_6_sw_init(struct amdgpu_device *adev)
{
 int i, ret;

 ret = device_create_file(adev->dev, &dev_attr_df_cntr_avail);
 if (ret)
  DRM_ERROR("failed to create file for available df counters\n");

 for (i = 0; i < AMDGPU_MAX_DF_PERFMONS; i++)
  adev->df_perfmon_config_assign_mask[i] = 0;
}
