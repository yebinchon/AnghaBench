
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint32_t ;
struct amdgpu_iv_entry {int client_id; int src_id; int * src_data; } ;
struct amdgpu_irq_src {int dummy; } ;
struct TYPE_4__ {TYPE_1__* inst; } ;
struct amdgpu_device {TYPE_2__ uvd; } ;
struct TYPE_3__ {int * ring_enc; int ring; } ;


 int DRM_DEBUG (char*) ;
 int DRM_ERROR (char*,int,...) ;


 int amdgpu_fence_process (int *) ;
 int amdgpu_sriov_vf (struct amdgpu_device*) ;

__attribute__((used)) static int uvd_v7_0_process_interrupt(struct amdgpu_device *adev,
          struct amdgpu_irq_src *source,
          struct amdgpu_iv_entry *entry)
{
 uint32_t ip_instance;

 switch (entry->client_id) {
 case 129:
  ip_instance = 0;
  break;
 case 128:
  ip_instance = 1;
  break;
 default:
  DRM_ERROR("Unhandled client id: %d\n", entry->client_id);
  return 0;
 }

 DRM_DEBUG("IH: UVD TRAP\n");

 switch (entry->src_id) {
 case 124:
  amdgpu_fence_process(&adev->uvd.inst[ip_instance].ring);
  break;
 case 119:
  amdgpu_fence_process(&adev->uvd.inst[ip_instance].ring_enc[0]);
  break;
 case 120:
  if (!amdgpu_sriov_vf(adev))
   amdgpu_fence_process(&adev->uvd.inst[ip_instance].ring_enc[1]);
  break;
 default:
  DRM_ERROR("Unhandled interrupt: %d %d\n",
     entry->src_id, entry->src_data[0]);
  break;
 }

 return 0;
}
