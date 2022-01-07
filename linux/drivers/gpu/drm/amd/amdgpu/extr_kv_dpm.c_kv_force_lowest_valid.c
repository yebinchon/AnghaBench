
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int dummy; } ;


 int kv_force_dpm_lowest (struct amdgpu_device*) ;

__attribute__((used)) static int kv_force_lowest_valid(struct amdgpu_device *adev)
{
 return kv_force_dpm_lowest(adev);
}
