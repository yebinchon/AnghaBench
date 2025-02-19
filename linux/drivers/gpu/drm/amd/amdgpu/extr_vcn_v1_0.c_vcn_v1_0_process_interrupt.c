
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct amdgpu_iv_entry {int src_id; int * src_data; } ;
struct amdgpu_irq_src {int dummy; } ;
struct TYPE_4__ {TYPE_1__* inst; } ;
struct amdgpu_device {TYPE_2__ vcn; } ;
struct TYPE_3__ {int ring_jpeg; int * ring_enc; int ring_dec; } ;


 int DRM_DEBUG (char*) ;
 int DRM_ERROR (char*,int,int ) ;
 int amdgpu_fence_process (int *) ;

__attribute__((used)) static int vcn_v1_0_process_interrupt(struct amdgpu_device *adev,
          struct amdgpu_irq_src *source,
          struct amdgpu_iv_entry *entry)
{
 DRM_DEBUG("IH: VCN TRAP\n");

 switch (entry->src_id) {
 case 124:
  amdgpu_fence_process(&adev->vcn.inst->ring_dec);
  break;
 case 119:
  amdgpu_fence_process(&adev->vcn.inst->ring_enc[0]);
  break;
 case 120:
  amdgpu_fence_process(&adev->vcn.inst->ring_enc[1]);
  break;
 case 126:
  amdgpu_fence_process(&adev->vcn.inst->ring_jpeg);
  break;
 default:
  DRM_ERROR("Unhandled interrupt: %d %d\n",
     entry->src_id, entry->src_data[0]);
  break;
 }

 return 0;
}
