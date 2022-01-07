
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct amdgpu_iv_entry {int src_id; int * src_data; } ;
struct amdgpu_irq_src {int dummy; } ;
struct TYPE_4__ {TYPE_1__* inst; } ;
struct amdgpu_device {TYPE_2__ uvd; } ;
struct TYPE_3__ {int * ring_enc; int ring; } ;


 int DRM_DEBUG (char*) ;
 int DRM_ERROR (char*,int,int ) ;
 int amdgpu_fence_process (int *) ;
 int likely (int ) ;
 int uvd_v6_0_enc_support (struct amdgpu_device*) ;

__attribute__((used)) static int uvd_v6_0_process_interrupt(struct amdgpu_device *adev,
          struct amdgpu_irq_src *source,
          struct amdgpu_iv_entry *entry)
{
 bool int_handled = 1;
 DRM_DEBUG("IH: UVD TRAP\n");

 switch (entry->src_id) {
 case 124:
  amdgpu_fence_process(&adev->uvd.inst->ring);
  break;
 case 119:
  if (likely(uvd_v6_0_enc_support(adev)))
   amdgpu_fence_process(&adev->uvd.inst->ring_enc[0]);
  else
   int_handled = 0;
  break;
 case 120:
  if (likely(uvd_v6_0_enc_support(adev)))
   amdgpu_fence_process(&adev->uvd.inst->ring_enc[1]);
  else
   int_handled = 0;
  break;
 }

 if (0 == int_handled)
   DRM_ERROR("Unhandled interrupt: %d %d\n",
     entry->src_id, entry->src_data[0]);

 return 0;
}
