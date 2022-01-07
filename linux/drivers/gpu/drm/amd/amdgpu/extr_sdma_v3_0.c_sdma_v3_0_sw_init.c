
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct amdgpu_ring {int use_doorbell; int use_pollmem; int name; int doorbell_index; int * ring_obj; } ;
struct TYPE_6__ {int num_instances; int trap_irq; TYPE_1__* instance; int illegal_inst_irq; } ;
struct TYPE_5__ {int * sdma_engine; } ;
struct amdgpu_device {TYPE_3__ sdma; TYPE_2__ doorbell_index; } ;
struct TYPE_4__ {struct amdgpu_ring ring; } ;


 int AMDGPU_IRQ_CLIENTID_LEGACY ;
 int AMDGPU_SDMA_IRQ_INSTANCE0 ;
 int AMDGPU_SDMA_IRQ_INSTANCE1 ;
 int DRM_ERROR (char*) ;
 int VISLANDS30_IV_SRCID_SDMA_SRBM_WRITE ;
 int VISLANDS30_IV_SRCID_SDMA_TRAP ;
 int amdgpu_irq_add_id (struct amdgpu_device*,int ,int,int *) ;
 int amdgpu_ring_init (struct amdgpu_device*,struct amdgpu_ring*,int,int *,int ) ;
 int amdgpu_sriov_vf (struct amdgpu_device*) ;
 int sdma_v3_0_init_microcode (struct amdgpu_device*) ;
 int sprintf (int ,char*,int) ;

__attribute__((used)) static int sdma_v3_0_sw_init(void *handle)
{
 struct amdgpu_ring *ring;
 int r, i;
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;


 r = amdgpu_irq_add_id(adev, AMDGPU_IRQ_CLIENTID_LEGACY, VISLANDS30_IV_SRCID_SDMA_TRAP,
         &adev->sdma.trap_irq);
 if (r)
  return r;


 r = amdgpu_irq_add_id(adev, AMDGPU_IRQ_CLIENTID_LEGACY, 241,
         &adev->sdma.illegal_inst_irq);
 if (r)
  return r;


 r = amdgpu_irq_add_id(adev, AMDGPU_IRQ_CLIENTID_LEGACY, VISLANDS30_IV_SRCID_SDMA_SRBM_WRITE,
         &adev->sdma.illegal_inst_irq);
 if (r)
  return r;

 r = sdma_v3_0_init_microcode(adev);
 if (r) {
  DRM_ERROR("Failed to load sdma firmware!\n");
  return r;
 }

 for (i = 0; i < adev->sdma.num_instances; i++) {
  ring = &adev->sdma.instance[i].ring;
  ring->ring_obj = ((void*)0);
  if (!amdgpu_sriov_vf(adev)) {
   ring->use_doorbell = 1;
   ring->doorbell_index = adev->doorbell_index.sdma_engine[i];
  } else {
   ring->use_pollmem = 1;
  }

  sprintf(ring->name, "sdma%d", i);
  r = amdgpu_ring_init(adev, ring, 1024,
         &adev->sdma.trap_irq,
         (i == 0) ?
         AMDGPU_SDMA_IRQ_INSTANCE0 :
         AMDGPU_SDMA_IRQ_INSTANCE1);
  if (r)
   return r;
 }

 return r;
}
