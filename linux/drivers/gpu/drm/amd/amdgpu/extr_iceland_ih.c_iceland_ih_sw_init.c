
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ih; } ;
struct amdgpu_device {TYPE_1__ irq; } ;


 int amdgpu_ih_ring_init (struct amdgpu_device*,int *,int,int) ;
 int amdgpu_irq_init (struct amdgpu_device*) ;

__attribute__((used)) static int iceland_ih_sw_init(void *handle)
{
 int r;
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;

 r = amdgpu_ih_ring_init(adev, &adev->irq.ih, 64 * 1024, 0);
 if (r)
  return r;

 r = amdgpu_irq_init(adev);

 return r;
}
