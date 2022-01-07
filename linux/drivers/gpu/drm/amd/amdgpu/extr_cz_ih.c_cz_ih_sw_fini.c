
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ih; } ;
struct amdgpu_device {TYPE_1__ irq; } ;


 int amdgpu_ih_ring_fini (struct amdgpu_device*,int *) ;
 int amdgpu_irq_fini (struct amdgpu_device*) ;
 int amdgpu_irq_remove_domain (struct amdgpu_device*) ;

__attribute__((used)) static int cz_ih_sw_fini(void *handle)
{
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;

 amdgpu_irq_fini(adev);
 amdgpu_ih_ring_fini(adev, &adev->irq.ih);
 amdgpu_irq_remove_domain(adev);

 return 0;
}
