
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint32_t ;
struct amdgpu_iv_entry {int ring_id; int client_id; } ;
struct amdgpu_irq_src {int dummy; } ;
struct TYPE_3__ {TYPE_2__* instance; } ;
struct amdgpu_device {TYPE_1__ sdma; int asic_type; } ;
struct TYPE_4__ {int page; int ring; } ;


 int CHIP_VEGA20 ;
 int DRM_DEBUG (char*) ;
 int amdgpu_fence_process (int *) ;
 size_t sdma_v4_0_irq_id_to_seq (int ) ;

__attribute__((used)) static int sdma_v4_0_process_trap_irq(struct amdgpu_device *adev,
          struct amdgpu_irq_src *source,
          struct amdgpu_iv_entry *entry)
{
 uint32_t instance;

 DRM_DEBUG("IH: SDMA trap\n");
 instance = sdma_v4_0_irq_id_to_seq(entry->client_id);
 switch (entry->ring_id) {
 case 0:
  amdgpu_fence_process(&adev->sdma.instance[instance].ring);
  break;
 case 1:
  if (adev->asic_type == CHIP_VEGA20)
   amdgpu_fence_process(&adev->sdma.instance[instance].page);
  break;
 case 2:

  break;
 case 3:
  if (adev->asic_type != CHIP_VEGA20)
   amdgpu_fence_process(&adev->sdma.instance[instance].page);
  break;
 }
 return 0;
}
