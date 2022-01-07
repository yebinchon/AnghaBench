
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int num_crtc; } ;
struct amdgpu_device {int pageflip_irq; TYPE_1__ mode_info; } ;


 int amdgpu_irq_put (struct amdgpu_device*,int *,unsigned int) ;

__attribute__((used)) static void dce_v10_0_pageflip_interrupt_fini(struct amdgpu_device *adev)
{
 unsigned i;


 for (i = 0; i < adev->mode_info.num_crtc; i++)
  amdgpu_irq_put(adev, &adev->pageflip_irq, i);
}
