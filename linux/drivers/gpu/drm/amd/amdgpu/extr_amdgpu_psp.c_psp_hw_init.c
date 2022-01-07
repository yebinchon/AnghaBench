
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mutex; int load_type; } ;
struct amdgpu_device {TYPE_1__ firmware; } ;


 int AMDGPU_FW_LOAD_DIRECT ;
 int DRM_ERROR (char*) ;
 int EINVAL ;
 int amdgpu_ucode_init_bo (struct amdgpu_device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int psp_load_fw (struct amdgpu_device*) ;

__attribute__((used)) static int psp_hw_init(void *handle)
{
 int ret;
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;

 mutex_lock(&adev->firmware.mutex);




 ret = amdgpu_ucode_init_bo(adev);
 if (ret)
  goto failed;

 ret = psp_load_fw(adev);
 if (ret) {
  DRM_ERROR("PSP firmware loading failed\n");
  goto failed;
 }

 mutex_unlock(&adev->firmware.mutex);
 return 0;

failed:
 adev->firmware.load_type = AMDGPU_FW_LOAD_DIRECT;
 mutex_unlock(&adev->firmware.mutex);
 return -EINVAL;
}
