
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * pmf; } ;
struct TYPE_4__ {TYPE_1__ kiq; } ;
struct amdgpu_device {TYPE_2__ gfx; } ;


 int gfx_v10_0_kiq_pm4_funcs ;

__attribute__((used)) static void gfx_v10_0_set_kiq_pm4_funcs(struct amdgpu_device *adev)
{
 adev->gfx.kiq.pmf = &gfx_v10_0_kiq_pm4_funcs;
}
