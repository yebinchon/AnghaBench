
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct amdgpu_iv_entry {int src_id; } ;
struct amdgpu_irq_src {int dummy; } ;
struct TYPE_4__ {TYPE_1__* instance; } ;
struct amdgpu_device {TYPE_2__ sdma; } ;
struct TYPE_3__ {int ring; } ;


 int amdgpu_fence_process (int *) ;

__attribute__((used)) static int si_dma_process_trap_irq(struct amdgpu_device *adev,
          struct amdgpu_irq_src *source,
          struct amdgpu_iv_entry *entry)
{
 if (entry->src_id == 224)
  amdgpu_fence_process(&adev->sdma.instance[0].ring);
 else
  amdgpu_fence_process(&adev->sdma.instance[1].ring);
 return 0;
}
