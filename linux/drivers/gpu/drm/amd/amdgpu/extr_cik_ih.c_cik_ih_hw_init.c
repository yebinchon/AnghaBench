
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int dummy; } ;


 int cik_ih_irq_init (struct amdgpu_device*) ;

__attribute__((used)) static int cik_ih_hw_init(void *handle)
{
 int r;
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;

 r = cik_ih_irq_init(adev);
 if (r)
  return r;

 return 0;
}
