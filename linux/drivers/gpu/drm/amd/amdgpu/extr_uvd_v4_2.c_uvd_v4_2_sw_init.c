
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct amdgpu_ring {int name; } ;
struct TYPE_4__ {TYPE_1__* inst; } ;
struct amdgpu_device {TYPE_2__ uvd; } ;
struct TYPE_3__ {int irq; struct amdgpu_ring ring; } ;


 int AMDGPU_IRQ_CLIENTID_LEGACY ;
 int amdgpu_irq_add_id (struct amdgpu_device*,int ,int,int *) ;
 int amdgpu_ring_init (struct amdgpu_device*,struct amdgpu_ring*,int,int *,int ) ;
 int amdgpu_uvd_entity_init (struct amdgpu_device*) ;
 int amdgpu_uvd_resume (struct amdgpu_device*) ;
 int amdgpu_uvd_sw_init (struct amdgpu_device*) ;
 int sprintf (int ,char*) ;

__attribute__((used)) static int uvd_v4_2_sw_init(void *handle)
{
 struct amdgpu_ring *ring;
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;
 int r;


 r = amdgpu_irq_add_id(adev, AMDGPU_IRQ_CLIENTID_LEGACY, 124, &adev->uvd.inst->irq);
 if (r)
  return r;

 r = amdgpu_uvd_sw_init(adev);
 if (r)
  return r;

 ring = &adev->uvd.inst->ring;
 sprintf(ring->name, "uvd");
 r = amdgpu_ring_init(adev, ring, 512, &adev->uvd.inst->irq, 0);
 if (r)
  return r;

 r = amdgpu_uvd_resume(adev);
 if (r)
  return r;

 r = amdgpu_uvd_entity_init(adev);

 return r;
}
