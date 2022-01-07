
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dpm_enabled; } ;
struct amdgpu_device {TYPE_1__ pm; } ;


 int kv_dpm_powergate_acp (struct amdgpu_device*,int) ;
 int kv_dpm_powergate_samu (struct amdgpu_device*,int) ;

__attribute__((used)) static int kv_dpm_late_init(void *handle)
{

 struct amdgpu_device *adev = (struct amdgpu_device *)handle;

 if (!adev->pm.dpm_enabled)
  return 0;

 kv_dpm_powergate_acp(adev, 1);
 kv_dpm_powergate_samu(adev, 1);

 return 0;
}
