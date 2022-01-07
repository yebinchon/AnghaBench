
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct amdgpu_iv_entry {int dummy; } ;
struct amdgpu_irq_src {int dummy; } ;
struct TYPE_4__ {TYPE_1__* inst; } ;
struct amdgpu_device {TYPE_2__ uvd; } ;
struct TYPE_3__ {int ring; } ;


 int DRM_DEBUG (char*) ;
 int amdgpu_fence_process (int *) ;

__attribute__((used)) static int uvd_v4_2_process_interrupt(struct amdgpu_device *adev,
          struct amdgpu_irq_src *source,
          struct amdgpu_iv_entry *entry)
{
 DRM_DEBUG("IH: UVD TRAP\n");
 amdgpu_fence_process(&adev->uvd.inst->ring);
 return 0;
}
