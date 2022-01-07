
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int dummy; } ;


 int cz_ih_irq_disable (struct amdgpu_device*) ;

__attribute__((used)) static int cz_ih_hw_fini(void *handle)
{
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;

 cz_ih_irq_disable(adev);

 return 0;
}
