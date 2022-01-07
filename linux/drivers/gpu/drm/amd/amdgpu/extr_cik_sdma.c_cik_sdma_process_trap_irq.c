
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct amdgpu_iv_entry {int ring_id; } ;
struct amdgpu_irq_src {int dummy; } ;
struct TYPE_4__ {TYPE_1__* instance; } ;
struct amdgpu_device {TYPE_2__ sdma; } ;
struct TYPE_3__ {int ring; } ;


 int DRM_DEBUG (char*) ;
 int amdgpu_fence_process (int *) ;

__attribute__((used)) static int cik_sdma_process_trap_irq(struct amdgpu_device *adev,
         struct amdgpu_irq_src *source,
         struct amdgpu_iv_entry *entry)
{
 u8 instance_id, queue_id;

 instance_id = (entry->ring_id & 0x3) >> 0;
 queue_id = (entry->ring_id & 0xc) >> 2;
 DRM_DEBUG("IH: SDMA trap\n");
 switch (instance_id) {
 case 0:
  switch (queue_id) {
  case 0:
   amdgpu_fence_process(&adev->sdma.instance[0].ring);
   break;
  case 1:

   break;
  case 2:

   break;
  }
  break;
 case 1:
  switch (queue_id) {
  case 0:
   amdgpu_fence_process(&adev->sdma.instance[1].ring);
   break;
  case 1:

   break;
  case 2:

   break;
  }
  break;
 }

 return 0;
}
