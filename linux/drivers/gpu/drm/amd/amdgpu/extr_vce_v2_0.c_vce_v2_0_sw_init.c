
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct amdgpu_ring {int name; } ;
struct TYPE_2__ {int num_rings; int irq; struct amdgpu_ring* ring; } ;
struct amdgpu_device {TYPE_1__ vce; } ;


 int AMDGPU_IRQ_CLIENTID_LEGACY ;
 scalar_t__ VCE_V2_0_DATA_SIZE ;
 scalar_t__ VCE_V2_0_FW_SIZE ;
 scalar_t__ VCE_V2_0_STACK_SIZE ;
 int amdgpu_irq_add_id (struct amdgpu_device*,int ,int,int *) ;
 int amdgpu_ring_init (struct amdgpu_device*,struct amdgpu_ring*,int,int *,int ) ;
 int amdgpu_vce_entity_init (struct amdgpu_device*) ;
 int amdgpu_vce_resume (struct amdgpu_device*) ;
 int amdgpu_vce_sw_init (struct amdgpu_device*,scalar_t__) ;
 int sprintf (int ,char*,int) ;

__attribute__((used)) static int vce_v2_0_sw_init(void *handle)
{
 struct amdgpu_ring *ring;
 int r, i;
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;


 r = amdgpu_irq_add_id(adev, AMDGPU_IRQ_CLIENTID_LEGACY, 167, &adev->vce.irq);
 if (r)
  return r;

 r = amdgpu_vce_sw_init(adev, VCE_V2_0_FW_SIZE +
  VCE_V2_0_STACK_SIZE + VCE_V2_0_DATA_SIZE);
 if (r)
  return r;

 r = amdgpu_vce_resume(adev);
 if (r)
  return r;

 for (i = 0; i < adev->vce.num_rings; i++) {
  ring = &adev->vce.ring[i];
  sprintf(ring->name, "vce%d", i);
  r = amdgpu_ring_init(adev, ring, 512,
         &adev->vce.irq, 0);
  if (r)
   return r;
 }

 r = amdgpu_vce_entity_init(adev);

 return r;
}
