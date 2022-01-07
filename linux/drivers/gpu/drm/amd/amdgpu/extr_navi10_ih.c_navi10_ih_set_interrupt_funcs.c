
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * ih_funcs; } ;
struct amdgpu_device {TYPE_1__ irq; } ;


 int navi10_ih_funcs ;

__attribute__((used)) static void navi10_ih_set_interrupt_funcs(struct amdgpu_device *adev)
{
 if (adev->irq.ih_funcs == ((void*)0))
  adev->irq.ih_funcs = &navi10_ih_funcs;
}
