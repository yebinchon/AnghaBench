
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int dummy; } ;


 int mes_v10_1_init_microcode (struct amdgpu_device*) ;

__attribute__((used)) static int mes_v10_1_sw_init(void *handle)
{
 int r;
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;

 r = mes_v10_1_init_microcode(adev);
 if (r)
  return r;

 return 0;
}
