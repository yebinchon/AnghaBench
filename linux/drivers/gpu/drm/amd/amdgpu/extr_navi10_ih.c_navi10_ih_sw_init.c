
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int ih; } ;
struct TYPE_8__ {int use_doorbell; int doorbell_index; } ;
struct TYPE_7__ {TYPE_4__ ih; } ;
struct TYPE_6__ {scalar_t__ load_type; } ;
struct amdgpu_device {TYPE_1__ doorbell_index; TYPE_3__ irq; TYPE_2__ firmware; } ;


 scalar_t__ AMDGPU_FW_LOAD_PSP ;
 int amdgpu_ih_ring_init (struct amdgpu_device*,TYPE_4__*,int,int) ;
 int amdgpu_irq_init (struct amdgpu_device*) ;

__attribute__((used)) static int navi10_ih_sw_init(void *handle)
{
 int r;
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;
 bool use_bus_addr;




 use_bus_addr =
  (adev->firmware.load_type == AMDGPU_FW_LOAD_PSP) ? 0 : 1;
 r = amdgpu_ih_ring_init(adev, &adev->irq.ih, 256 * 1024, use_bus_addr);
 if (r)
  return r;

 adev->irq.ih.use_doorbell = 1;
 adev->irq.ih.doorbell_index = adev->doorbell_index.ih << 1;

 r = amdgpu_irq_init(adev);

 return r;
}
