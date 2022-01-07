
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct amdgpu_ring {int use_doorbell; int doorbell_index; int name; int * ring_obj; } ;
struct TYPE_6__ {int num_instances; int trap_irq; TYPE_1__* instance; scalar_t__ has_page_queue; int ecc_irq; } ;
struct TYPE_5__ {int* sdma_engine; } ;
struct amdgpu_device {TYPE_3__ sdma; TYPE_2__ doorbell_index; } ;
struct TYPE_4__ {struct amdgpu_ring page; struct amdgpu_ring ring; } ;


 scalar_t__ AMDGPU_SDMA_IRQ_INSTANCE0 ;
 int DRM_INFO (char*,char*) ;
 int SDMA0_4_0__SRCID__SDMA_SRAM_ECC ;
 int SDMA0_4_0__SRCID__SDMA_TRAP ;
 int amdgpu_irq_add_id (struct amdgpu_device*,int ,int ,int *) ;
 int amdgpu_ring_init (struct amdgpu_device*,struct amdgpu_ring*,int,int *,scalar_t__) ;
 int sdma_v4_0_seq_to_irq_id (int) ;
 int sprintf (int ,char*,int) ;

__attribute__((used)) static int sdma_v4_0_sw_init(void *handle)
{
 struct amdgpu_ring *ring;
 int r, i;
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;


 for (i = 0; i < adev->sdma.num_instances; i++) {
  r = amdgpu_irq_add_id(adev, sdma_v4_0_seq_to_irq_id(i),
          SDMA0_4_0__SRCID__SDMA_TRAP,
          &adev->sdma.trap_irq);
  if (r)
   return r;
 }


 for (i = 0; i < adev->sdma.num_instances; i++) {
  r = amdgpu_irq_add_id(adev, sdma_v4_0_seq_to_irq_id(i),
          SDMA0_4_0__SRCID__SDMA_SRAM_ECC,
          &adev->sdma.ecc_irq);
  if (r)
   return r;
 }

 for (i = 0; i < adev->sdma.num_instances; i++) {
  ring = &adev->sdma.instance[i].ring;
  ring->ring_obj = ((void*)0);
  ring->use_doorbell = 1;

  DRM_INFO("use_doorbell being set to: [%s]\n",
    ring->use_doorbell?"true":"false");


  ring->doorbell_index = adev->doorbell_index.sdma_engine[i] << 1;

  sprintf(ring->name, "sdma%d", i);
  r = amdgpu_ring_init(adev, ring, 1024, &adev->sdma.trap_irq,
         AMDGPU_SDMA_IRQ_INSTANCE0 + i);
  if (r)
   return r;

  if (adev->sdma.has_page_queue) {
   ring = &adev->sdma.instance[i].page;
   ring->ring_obj = ((void*)0);
   ring->use_doorbell = 1;




   ring->doorbell_index = adev->doorbell_index.sdma_engine[i] << 1;
   ring->doorbell_index += 0x400;

   sprintf(ring->name, "page%d", i);
   r = amdgpu_ring_init(adev, ring, 1024,
          &adev->sdma.trap_irq,
          AMDGPU_SDMA_IRQ_INSTANCE0 + i);
   if (r)
    return r;
  }
 }

 return r;
}
