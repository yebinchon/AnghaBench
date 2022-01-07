
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * gmc_funcs; } ;
struct amdgpu_device {TYPE_1__ gmc; } ;


 int gmc_v10_0_gmc_funcs ;

__attribute__((used)) static void gmc_v10_0_set_gmc_funcs(struct amdgpu_device *adev)
{
 if (adev->gmc.gmc_funcs == ((void*)0))
  adev->gmc.gmc_funcs = &gmc_v10_0_gmc_funcs;
}
