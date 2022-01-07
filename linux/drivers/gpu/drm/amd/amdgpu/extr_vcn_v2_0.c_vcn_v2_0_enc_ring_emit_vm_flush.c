
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct amdgpu_vmhub {scalar_t__ ctx0_ptb_addr_lo32; } ;
struct amdgpu_ring {TYPE_2__* funcs; TYPE_1__* adev; } ;
struct TYPE_4__ {size_t vmhub; } ;
struct TYPE_3__ {struct amdgpu_vmhub* vmhub; } ;


 int amdgpu_gmc_emit_flush_gpu_tlb (struct amdgpu_ring*,unsigned int,int ) ;
 int lower_32_bits (int ) ;
 int vcn_v2_0_enc_ring_emit_reg_wait (struct amdgpu_ring*,scalar_t__,int ,int) ;

void vcn_v2_0_enc_ring_emit_vm_flush(struct amdgpu_ring *ring,
    unsigned int vmid, uint64_t pd_addr)
{
 struct amdgpu_vmhub *hub = &ring->adev->vmhub[ring->funcs->vmhub];

 pd_addr = amdgpu_gmc_emit_flush_gpu_tlb(ring, vmid, pd_addr);


 vcn_v2_0_enc_ring_emit_reg_wait(ring, hub->ctx0_ptb_addr_lo32 + vmid * 2,
     lower_32_bits(pd_addr), 0xffffffff);
}
