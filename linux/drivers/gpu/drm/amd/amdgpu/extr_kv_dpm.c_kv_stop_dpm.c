
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int dummy; } ;


 int amdgpu_kv_smc_dpm_enable (struct amdgpu_device*,int) ;

__attribute__((used)) static void kv_stop_dpm(struct amdgpu_device *adev)
{
 amdgpu_kv_smc_dpm_enable(adev, 0);
}
