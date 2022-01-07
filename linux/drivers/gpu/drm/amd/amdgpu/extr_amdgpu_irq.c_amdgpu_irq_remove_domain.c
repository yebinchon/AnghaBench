
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * domain; } ;
struct amdgpu_device {TYPE_1__ irq; } ;


 int irq_domain_remove (int *) ;

void amdgpu_irq_remove_domain(struct amdgpu_device *adev)
{
 if (adev->irq.domain) {
  irq_domain_remove(adev->irq.domain);
  adev->irq.domain = ((void*)0);
 }
}
