
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct amdgpu_ring {int has_compute_vm_bug; TYPE_3__* funcs; } ;
struct amdgpu_ip_block {TYPE_1__* version; } ;
struct TYPE_5__ {int mec_fw_version; } ;
struct amdgpu_device {int num_rings; struct amdgpu_ring** rings; TYPE_2__ gfx; } ;
struct TYPE_6__ {scalar_t__ type; } ;
struct TYPE_4__ {int major; } ;


 scalar_t__ AMDGPU_RING_TYPE_COMPUTE ;
 int AMD_IP_BLOCK_TYPE_GFX ;
 struct amdgpu_ip_block* amdgpu_device_ip_get_ip_block (struct amdgpu_device*,int ) ;

void amdgpu_vm_check_compute_bug(struct amdgpu_device *adev)
{
 const struct amdgpu_ip_block *ip_block;
 bool has_compute_vm_bug;
 struct amdgpu_ring *ring;
 int i;

 has_compute_vm_bug = 0;

 ip_block = amdgpu_device_ip_get_ip_block(adev, AMD_IP_BLOCK_TYPE_GFX);
 if (ip_block) {


  if (ip_block->version->major <= 7)
   has_compute_vm_bug = 1;
  else if (ip_block->version->major == 8)
   if (adev->gfx.mec_fw_version < 673)
    has_compute_vm_bug = 1;
 }

 for (i = 0; i < adev->num_rings; i++) {
  ring = adev->rings[i];
  if (ring->funcs->type == AMDGPU_RING_TYPE_COMPUTE)

   ring->has_compute_vm_bug = has_compute_vm_bug;
  else
   ring->has_compute_vm_bug = 0;
 }
}
