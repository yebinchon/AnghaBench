
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int num_types; int * funcs; } ;
struct TYPE_4__ {TYPE_1__ irq; } ;
struct amdgpu_device {TYPE_2__ vce; } ;


 int vce_v4_0_irq_funcs ;

__attribute__((used)) static void vce_v4_0_set_irq_funcs(struct amdgpu_device *adev)
{
 adev->vce.irq.num_types = 1;
 adev->vce.irq.funcs = &vce_v4_0_irq_funcs;
}
