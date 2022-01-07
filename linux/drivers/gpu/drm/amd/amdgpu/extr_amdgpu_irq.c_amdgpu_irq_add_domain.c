
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int domain; } ;
struct amdgpu_device {TYPE_1__ irq; } ;


 int AMDGPU_MAX_IRQ_SRC_ID ;
 int DRM_ERROR (char*) ;
 int ENODEV ;
 int amdgpu_hw_irqdomain_ops ;
 int irq_domain_add_linear (int *,int ,int *,struct amdgpu_device*) ;

int amdgpu_irq_add_domain(struct amdgpu_device *adev)
{
 adev->irq.domain = irq_domain_add_linear(((void*)0), AMDGPU_MAX_IRQ_SRC_ID,
       &amdgpu_hw_irqdomain_ops, adev);
 if (!adev->irq.domain) {
  DRM_ERROR("GPU irq add domain failed\n");
  return -ENODEV;
 }

 return 0;
}
