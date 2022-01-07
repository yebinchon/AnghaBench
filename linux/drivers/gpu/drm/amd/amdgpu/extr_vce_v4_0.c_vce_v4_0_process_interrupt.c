
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct amdgpu_iv_entry {int* src_data; int src_id; } ;
struct amdgpu_irq_src {int dummy; } ;
struct TYPE_2__ {int * ring; } ;
struct amdgpu_device {TYPE_1__ vce; } ;


 int DRM_DEBUG (char*) ;
 int DRM_ERROR (char*,int ,size_t) ;
 int amdgpu_fence_process (int *) ;

__attribute__((used)) static int vce_v4_0_process_interrupt(struct amdgpu_device *adev,
          struct amdgpu_irq_src *source,
          struct amdgpu_iv_entry *entry)
{
 DRM_DEBUG("IH: VCE\n");

 switch (entry->src_data[0]) {
 case 0:
 case 1:
 case 2:
  amdgpu_fence_process(&adev->vce.ring[entry->src_data[0]]);
  break;
 default:
  DRM_ERROR("Unhandled interrupt: %d %d\n",
     entry->src_id, entry->src_data[0]);
  break;
 }

 return 0;
}
