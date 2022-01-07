
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * funcs; scalar_t__ num_types; } ;
struct TYPE_4__ {TYPE_1__ self_irq; } ;
struct amdgpu_device {TYPE_2__ irq; } ;


 int vega10_ih_self_irq_funcs ;

__attribute__((used)) static void vega10_ih_set_self_irq_funcs(struct amdgpu_device *adev)
{
 adev->irq.self_irq.num_types = 0;
 adev->irq.self_irq.funcs = &vega10_ih_self_irq_funcs;
}
