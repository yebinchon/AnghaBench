
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int work; } ;
struct TYPE_5__ {TYPE_1__ thermal; } ;
struct TYPE_6__ {int mutex; TYPE_2__ dpm; } ;
struct amdgpu_device {TYPE_3__ pm; } ;


 int flush_work (int *) ;
 int kv_dpm_fini (struct amdgpu_device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int kv_dpm_sw_fini(void *handle)
{
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;

 flush_work(&adev->pm.dpm.thermal.work);

 mutex_lock(&adev->pm.mutex);
 kv_dpm_fini(adev);
 mutex_unlock(&adev->pm.mutex);

 return 0;
}
