
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * funcs; } ;
struct amdgpu_device {TYPE_1__ firmware; } ;


 int psp_funcs ;

__attribute__((used)) static void psp_set_funcs(struct amdgpu_device *adev)
{
 if (((void*)0) == adev->firmware.funcs)
  adev->firmware.funcs = &psp_funcs;
}
