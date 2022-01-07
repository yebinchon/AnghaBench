
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ras_common_if {int block; } ;
struct amdgpu_ras {int flags; } ;
struct amdgpu_device {int dummy; } ;


 int AMDGPU_RAS_FLAG_INIT_BY_VBIOS ;
 int DRM_INFO (char*,int ) ;
 int EINVAL ;
 int __amdgpu_ras_feature_enable (struct amdgpu_device*,struct ras_common_if*,int) ;
 int amdgpu_ras_feature_enable (struct amdgpu_device*,struct ras_common_if*,int) ;
 struct amdgpu_ras* amdgpu_ras_get_context (struct amdgpu_device*) ;
 int ras_block_str (int ) ;

int amdgpu_ras_feature_enable_on_boot(struct amdgpu_device *adev,
  struct ras_common_if *head, bool enable)
{
 struct amdgpu_ras *con = amdgpu_ras_get_context(adev);
 int ret;

 if (!con)
  return -EINVAL;

 if (con->flags & AMDGPU_RAS_FLAG_INIT_BY_VBIOS) {
  if (enable) {






   ret = amdgpu_ras_feature_enable(adev, head, 1);




   if (ret == -EINVAL) {
    ret = __amdgpu_ras_feature_enable(adev, head, 1);
    if (!ret)
     DRM_INFO("RAS INFO: %s setup object\n",
      ras_block_str(head->block));
   }
  } else {

   ret = __amdgpu_ras_feature_enable(adev, head, 1);
   if (ret)
    return ret;

   ret = amdgpu_ras_feature_enable(adev, head, 0);
  }
 } else
  ret = amdgpu_ras_feature_enable(adev, head, enable);

 return ret;
}
