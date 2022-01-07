
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * gmc_funcs; } ;
struct amdgpu_device {TYPE_1__ gmc; } ;


 int gmc_v7_0_gmc_funcs ;

__attribute__((used)) static void gmc_v7_0_set_gmc_funcs(struct amdgpu_device *adev)
{
 adev->gmc.gmc_funcs = &gmc_v7_0_gmc_funcs;
}
