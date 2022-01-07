
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int mutex; } ;
struct TYPE_3__ {scalar_t__ load_type; } ;
struct amdgpu_device {TYPE_2__ psp; TYPE_1__ firmware; } ;


 scalar_t__ AMDGPU_FW_LOAD_PSP ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int psp_mode1_reset (TYPE_2__*) ;

int psp_gpu_reset(struct amdgpu_device *adev)
{
 int ret;

 if (adev->firmware.load_type != AMDGPU_FW_LOAD_PSP)
  return 0;

 mutex_lock(&adev->psp.mutex);
 ret = psp_mode1_reset(&adev->psp);
 mutex_unlock(&adev->psp.mutex);

 return ret;
}
