
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * ih_funcs; } ;
struct amdgpu_device {TYPE_1__ irq; } ;


 int vega10_ih_funcs ;

__attribute__((used)) static void vega10_ih_set_interrupt_funcs(struct amdgpu_device *adev)
{
 adev->irq.ih_funcs = &vega10_ih_funcs;
}
