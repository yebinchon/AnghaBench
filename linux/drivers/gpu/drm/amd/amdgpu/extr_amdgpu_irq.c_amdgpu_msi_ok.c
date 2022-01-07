
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int dummy; } ;


 int amdgpu_msi ;

__attribute__((used)) static bool amdgpu_msi_ok(struct amdgpu_device *adev)
{
 if (amdgpu_msi == 1)
  return 1;
 else if (amdgpu_msi == 0)
  return 0;

 return 1;
}
