
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int ih; } ;
struct TYPE_6__ {int use_doorbell; int doorbell_index; } ;
struct TYPE_4__ {TYPE_3__ ih2; TYPE_3__ ih1; TYPE_3__ ih; int self_irq; } ;
struct amdgpu_device {TYPE_2__ doorbell_index; TYPE_1__ irq; } ;


 int PAGE_SIZE ;
 int SOC15_IH_CLIENTID_IH ;
 int amdgpu_ih_ring_init (struct amdgpu_device*,TYPE_3__*,int,int) ;
 int amdgpu_irq_add_id (struct amdgpu_device*,int ,int ,int *) ;
 int amdgpu_irq_init (struct amdgpu_device*) ;

__attribute__((used)) static int vega10_ih_sw_init(void *handle)
{
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;
 int r;

 r = amdgpu_irq_add_id(adev, SOC15_IH_CLIENTID_IH, 0,
         &adev->irq.self_irq);
 if (r)
  return r;

 r = amdgpu_ih_ring_init(adev, &adev->irq.ih, 256 * 1024, 1);
 if (r)
  return r;

 adev->irq.ih.use_doorbell = 1;
 adev->irq.ih.doorbell_index = adev->doorbell_index.ih << 1;

 r = amdgpu_ih_ring_init(adev, &adev->irq.ih1, PAGE_SIZE, 1);
 if (r)
  return r;

 adev->irq.ih1.use_doorbell = 1;
 adev->irq.ih1.doorbell_index = (adev->doorbell_index.ih + 1) << 1;

 r = amdgpu_ih_ring_init(adev, &adev->irq.ih2, PAGE_SIZE, 1);
 if (r)
  return r;

 adev->irq.ih2.use_doorbell = 1;
 adev->irq.ih2.doorbell_index = (adev->doorbell_index.ih + 2) << 1;

 r = amdgpu_irq_init(adev);

 return r;
}
