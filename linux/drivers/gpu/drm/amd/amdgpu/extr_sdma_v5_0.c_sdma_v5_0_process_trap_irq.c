
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct amdgpu_iv_entry {int client_id; int ring_id; } ;
struct amdgpu_irq_src {int dummy; } ;
struct TYPE_3__ {TYPE_2__* instance; } ;
struct amdgpu_device {TYPE_1__ sdma; } ;
struct TYPE_4__ {int ring; } ;


 int DRM_DEBUG (char*) ;


 int amdgpu_fence_process (int *) ;

__attribute__((used)) static int sdma_v5_0_process_trap_irq(struct amdgpu_device *adev,
          struct amdgpu_irq_src *source,
          struct amdgpu_iv_entry *entry)
{
 DRM_DEBUG("IH: SDMA trap\n");
 switch (entry->client_id) {
 case 129:
  switch (entry->ring_id) {
  case 0:
   amdgpu_fence_process(&adev->sdma.instance[0].ring);
   break;
  case 1:

   break;
  case 2:

   break;
  case 3:

   break;
  }
  break;
 case 128:
  switch (entry->ring_id) {
  case 0:
   amdgpu_fence_process(&adev->sdma.instance[1].ring);
   break;
  case 1:

   break;
  case 2:

   break;
  case 3:

   break;
  }
  break;
 }
 return 0;
}
