
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int dummy; } ;


 int mes_v10_1_free_microcode (struct amdgpu_device*) ;

__attribute__((used)) static int mes_v10_1_sw_fini(void *handle)
{
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;

 mes_v10_1_free_microcode(adev);

 return 0;
}
