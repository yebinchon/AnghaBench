
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
struct amdgpu_vmhub {scalar_t__ vm_inv_eng0_ack; scalar_t__ vm_inv_eng0_req; scalar_t__ ctx0_ptb_addr_hi32; scalar_t__ ctx0_ptb_addr_lo32; } ;
struct amdgpu_ring {unsigned int vm_inv_eng; TYPE_2__* funcs; TYPE_1__* adev; } ;
struct TYPE_4__ {size_t vmhub; } ;
struct TYPE_3__ {struct amdgpu_vmhub* vmhub; } ;


 int amdgpu_ring_emit_reg_write_reg_wait (struct amdgpu_ring*,scalar_t__,scalar_t__,int ,int) ;
 int amdgpu_ring_emit_wreg (struct amdgpu_ring*,scalar_t__,int ) ;
 int gmc_v10_0_get_invalidate_req (unsigned int,int ) ;
 int lower_32_bits (int ) ;
 int upper_32_bits (int ) ;

__attribute__((used)) static uint64_t gmc_v10_0_emit_flush_gpu_tlb(struct amdgpu_ring *ring,
          unsigned vmid, uint64_t pd_addr)
{
 struct amdgpu_vmhub *hub = &ring->adev->vmhub[ring->funcs->vmhub];
 uint32_t req = gmc_v10_0_get_invalidate_req(vmid, 0);
 unsigned eng = ring->vm_inv_eng;

 amdgpu_ring_emit_wreg(ring, hub->ctx0_ptb_addr_lo32 + (2 * vmid),
         lower_32_bits(pd_addr));

 amdgpu_ring_emit_wreg(ring, hub->ctx0_ptb_addr_hi32 + (2 * vmid),
         upper_32_bits(pd_addr));

 amdgpu_ring_emit_reg_write_reg_wait(ring, hub->vm_inv_eng0_req + eng,
         hub->vm_inv_eng0_ack + eng,
         req, 1 << vmid);

 return pd_addr;
}
